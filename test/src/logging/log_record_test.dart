import 'dart:async';

import 'package:flutter_jungle_core/src/logging/level.dart';
import 'package:flutter_jungle_core/src/logging/log_record.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LogRecord', () {
    test('stores all the provided values', () {
      final stackTrace = StackTrace.current;
      final zone = Zone.current;
      const error = 'boom';
      const object = 42;

      final record = LogRecord(
        Level.SEVERE,
        'message',
        'logger',
        error,
        stackTrace,
        zone,
        object,
      );

      expect(record.level, Level.SEVERE);
      expect(record.message, 'message');
      expect(record.loggerName, 'logger');
      expect(record.error, error);
      expect(record.stackTrace, stackTrace);
      expect(record.zone, zone);
      expect(record.object, object);
      expect(record.time, isA<DateTime>());
    });

    test('optional values default to null', () {
      final record = LogRecord(Level.INFO, 'message', 'logger');

      expect(record.error, isNull);
      expect(record.stackTrace, isNull);
      expect(record.zone, isNull);
      expect(record.object, isNull);
    });

    test('sequence numbers increase with every record', () {
      final first = LogRecord(Level.INFO, 'a', 'logger');
      final second = LogRecord(Level.INFO, 'b', 'logger');

      expect(second.sequenceNumber, greaterThan(first.sequenceNumber));
    });

    test('toString includes the level, logger name and message', () {
      final record = LogRecord(Level.WARNING, 'careful', 'my.logger');

      expect(record.toString(), '[WARNING] my.logger: careful');
    });
  });
}
