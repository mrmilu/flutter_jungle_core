import 'dart:async';

import 'package:flutter_jungle_core/src/logging/level.dart';
import 'package:flutter_jungle_core/src/logging/log_record.dart';
import 'package:flutter_jungle_core/src/logging/logger.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  tearDown(() {
    hierarchicalLoggingEnabled = false;
    recordStackTraceAtLevel = Level.OFF;
    Logger.root.level = Level.INFO;
    Logger.root.clearListeners();
  });

  group('Logger creation', () {
    test('returns the same instance for the same name', () {
      expect(identical(Logger('same'), Logger('same')), isTrue);
    });

    test('root logger has an empty name, no parent and default level', () {
      expect(Logger.root.name, '');
      expect(Logger.root.parent, isNull);
      expect(Logger.root.level, defaultLevel);
      expect(Logger(''), same(Logger.root));
    });

    test('simple names have the root as parent', () {
      final logger = Logger('simple');

      expect(logger.parent, same(Logger.root));
      expect(logger.fullName, 'simple');
      expect(Logger.root.children['simple'], same(logger));
    });

    test('dotted names create a hierarchy', () {
      final child = Logger('hier.parent.child');
      final parent = Logger('hier.parent');

      expect(child.name, 'child');
      expect(child.parent, same(parent));
      expect(child.fullName, 'hier.parent.child');
      expect(parent.children['child'], same(child));
    });

    test('throws when the name starts or ends with a dot', () {
      expect(() => Logger('.bad'), throwsArgumentError);
      expect(() => Logger('bad.'), throwsArgumentError);
    });

    test('detached loggers are not shared nor attached', () {
      final a = Logger.detached('detached');
      final b = Logger.detached('detached');

      expect(identical(a, b), isFalse);
      expect(a.parent, isNull);
      expect(a.fullName, 'detached');
      expect(Logger.attachedLoggers, isNot(contains(a)));
    });

    test('attachedLoggers contains created loggers', () {
      final logger = Logger('attached');

      expect(Logger.attachedLoggers, contains(logger));
    });
  });

  group('Logger level', () {
    test('non-root logger uses the root level when hierarchy is disabled', () {
      final logger = Logger('level.flat');
      Logger.root.level = Level.WARNING;

      expect(logger.level, Level.WARNING);
    });

    test('detached logger uses its own default level', () {
      expect(Logger.detached('d').level, defaultLevel);
    });

    test('setting the level on a non-root logger throws without hierarchy', () {
      expect(
        () => Logger('level.set').level = Level.ALL,
        throwsUnsupportedError,
      );
    });

    test('setting a null level on the root logger throws', () {
      expect(() => Logger.root.level = null, throwsUnsupportedError);
    });

    test('child inherits or overrides the level with hierarchy enabled', () {
      hierarchicalLoggingEnabled = true;
      final parent = Logger('level.hier');
      final child = Logger('level.hier.child');

      Logger.root.level = Level.SEVERE;
      expect(child.level, Level.SEVERE);

      parent.level = Level.FINE;
      expect(child.level, Level.FINE);

      child.level = Level.WARNING;
      expect(child.level, Level.WARNING);

      child.level = null;
      parent.level = null;
      expect(child.level, Level.SEVERE);
    });

    test('onLevelChanged emits only when the level actually changes', () {
      final logger = Logger.detached('changes');
      final levels = <Level?>[];
      final subscription = logger.onLevelChanged.listen(levels.add);

      logger.level = Level.FINE;
      logger.level = Level.FINE;
      logger.level = Level.SEVERE;

      expect(levels, [Level.FINE, Level.SEVERE]);
      subscription.cancel();
    });

    test('isLoggable compares against the effective level', () {
      final logger = Logger.detached('loggable')..level = Level.WARNING;

      expect(logger.isLoggable(Level.INFO), isFalse);
      expect(logger.isLoggable(Level.WARNING), isTrue);
      expect(logger.isLoggable(Level.SEVERE), isTrue);
    });
  });

  group('Logger logging', () {
    test('publishes a record for each level helper', () {
      final logger = Logger.detached('helpers')..level = Level.ALL;
      final records = <LogRecord>[];
      logger.onRecord.listen(records.add);

      logger
        ..finest('finest')
        ..finer('finer')
        ..fine('fine')
        ..config('config')
        ..info('info')
        ..warning('warning')
        ..severe('severe')
        ..shout('shout');

      expect(records.map((r) => r.level), [
        Level.FINEST,
        Level.FINER,
        Level.FINE,
        Level.CONFIG,
        Level.INFO,
        Level.WARNING,
        Level.SEVERE,
        Level.SHOUT,
      ]);
      expect(records.map((r) => r.message), [
        'finest',
        'finer',
        'fine',
        'config',
        'info',
        'warning',
        'severe',
        'shout',
      ]);
    });

    test('does not publish records below the level', () {
      final logger = Logger.detached('filtered')..level = Level.SEVERE;
      final records = <LogRecord>[];
      logger.onRecord.listen(records.add);

      logger
        ..info('ignored')
        ..severe('kept');

      expect(records.map((r) => r.message), ['kept']);
    });

    test('stores error and stack trace', () {
      final logger = Logger.detached('error');
      final records = <LogRecord>[];
      logger.onRecord.listen(records.add);
      final stackTrace = StackTrace.current;

      logger.severe('failed', 'boom', stackTrace);

      expect(records.single.error, 'boom');
      expect(records.single.stackTrace, stackTrace);
      expect(records.single.zone, Zone.current);
    });

    test('evaluates function messages lazily', () {
      final logger = Logger.detached('lazy')..level = Level.SEVERE;
      final records = <LogRecord>[];
      logger.onRecord.listen(records.add);
      var evaluations = 0;

      logger.info(() {
        evaluations++;
        return 'not evaluated';
      });
      logger.severe(() {
        evaluations++;
        return 'evaluated';
      });

      expect(evaluations, 1);
      expect(records.single.message, 'evaluated');
      expect(records.single.object, isNull);
    });

    test('converts non-string messages and keeps the original object', () {
      final logger = Logger.detached('object');
      final records = <LogRecord>[];
      logger.onRecord.listen(records.add);

      logger.info(123);

      expect(records.single.message, '123');
      expect(records.single.object, 123);
    });

    test('records a stack trace at or above recordStackTraceAtLevel', () {
      recordStackTraceAtLevel = Level.WARNING;
      final logger = Logger.detached('autotrace');
      final records = <LogRecord>[];
      logger.onRecord.listen(records.add);

      logger
        ..info('no trace')
        ..warning('with trace');

      expect(records.first.stackTrace, isNull);
      expect(records.last.stackTrace, isNotNull);
      expect(
        records.last.error,
        'autogenerated stack trace for WARNING with trace',
      );
    });

    test('keeps the given error when recording a stack trace', () {
      recordStackTraceAtLevel = Level.INFO;
      final logger = Logger.detached('keeperror');
      final records = <LogRecord>[];
      logger.onRecord.listen(records.add);

      logger.info('message', 'custom error', StackTrace.empty);

      expect(records.single.error, 'custom error');
      expect(records.single.stackTrace, isNot(StackTrace.empty));
    });

    test('uses the provided zone', () {
      final logger = Logger.detached('zone');
      final records = <LogRecord>[];
      logger.onRecord.listen(records.add);
      final zone = Zone.current.fork();

      logger.log(Level.INFO, 'message', null, null, zone);

      expect(records.single.zone, same(zone));
    });

    test('child logger records reach the root when hierarchy is disabled', () {
      final logger = Logger('flat.child');
      final records = <LogRecord>[];
      final subscription = Logger.root.onRecord.listen(records.add);

      logger.info('hello');

      expect(records.single.loggerName, 'flat.child');
      subscription.cancel();
    });

    test('child records bubble up to every ancestor with hierarchy', () {
      hierarchicalLoggingEnabled = true;
      final child = Logger('bubble.parent.child');
      final parent = Logger('bubble.parent');
      final fromChild = <LogRecord>[];
      final fromParent = <LogRecord>[];
      final fromRoot = <LogRecord>[];
      child.onRecord.listen(fromChild.add);
      parent.onRecord.listen(fromParent.add);
      Logger.root.onRecord.listen(fromRoot.add);

      child.info('hello');

      expect(fromChild, hasLength(1));
      expect(fromParent, hasLength(1));
      expect(fromRoot, hasLength(1));
    });
  });

  group('Logger listeners', () {
    test('non-root onRecord shares the root stream without hierarchy', () {
      final records = <LogRecord>[];
      Logger('listeners.flat').onRecord.listen(records.add);

      Logger.root.info('to root');

      expect(records.single.message, 'to root');
    });

    test('clearListeners on a child clears the root without hierarchy', () {
      final records = <LogRecord>[];
      Logger.root.onRecord.listen(records.add);

      Logger('listeners.clear').clearListeners();
      Logger.root.info('after clear');

      expect(records, isEmpty);
    });

    test('clearListeners clears only its own stream with hierarchy', () {
      hierarchicalLoggingEnabled = true;
      final child = Logger('listeners.hier');
      final fromChild = <LogRecord>[];
      final fromRoot = <LogRecord>[];
      child.onRecord.listen(fromChild.add);
      Logger.root.onRecord.listen(fromRoot.add);

      child.clearListeners();
      child.info('after clear');

      expect(fromChild, isEmpty);
      expect(fromRoot, hasLength(1));
    });

    test('clearListeners without listeners does nothing', () {
      expect(
        () => Logger.detached('nolisteners').clearListeners(),
        returnsNormally,
      );
    });
  });
}
