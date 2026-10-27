import 'package:flutter_jungle_core/src/logging/level.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Level', () {
    test('predefined levels have the expected names and values', () {
      final expected = <Level, (String, int)>{
        Level.ALL: ('ALL', 0),
        Level.FINEST: ('FINEST', 300),
        Level.FINER: ('FINER', 400),
        Level.FINE: ('FINE', 500),
        Level.CONFIG: ('CONFIG', 700),
        Level.INFO: ('INFO', 800),
        Level.WARNING: ('WARNING', 900),
        Level.SEVERE: ('SEVERE', 1000),
        Level.SHOUT: ('SHOUT', 1200),
        Level.OFF: ('OFF', 2000),
      };

      expected.forEach((level, data) {
        expect(level.name, data.$1);
        expect(level.value, data.$2);
      });
    });

    test('LEVELS lists every predefined level in ascending order', () {
      expect(Level.LEVELS, hasLength(10));
      expect(Level.LEVELS.first, Level.ALL);
      expect(Level.LEVELS.last, Level.OFF);

      final values = Level.LEVELS.map((l) => l.value).toList();
      expect(values, [...values]..sort());
    });

    test('equality and hashCode are based on the value', () {
      const custom = Level('CUSTOM', 800);

      expect(custom == Level.INFO, isTrue);
      expect(custom.hashCode, Level.INFO.hashCode);
      expect(Level.INFO == Level.WARNING, isFalse);
      // ignore: unrelated_type_equality_checks
      expect(Level.INFO == 800, isFalse);
    });

    test('comparison operators compare values', () {
      expect(Level.INFO < Level.WARNING, isTrue);
      expect(Level.WARNING < Level.INFO, isFalse);
      expect(Level.INFO <= Level.INFO, isTrue);
      expect(Level.WARNING <= Level.INFO, isFalse);
      expect(Level.WARNING > Level.INFO, isTrue);
      expect(Level.INFO > Level.WARNING, isFalse);
      expect(Level.INFO >= Level.INFO, isTrue);
      expect(Level.INFO >= Level.WARNING, isFalse);
    });

    test('compareTo returns the difference between values', () {
      expect(Level.INFO.compareTo(Level.INFO), 0);
      expect(Level.INFO.compareTo(Level.WARNING), lessThan(0));
      expect(Level.WARNING.compareTo(Level.INFO), greaterThan(0));
    });

    test('toString returns the name', () {
      expect(Level.SEVERE.toString(), 'SEVERE');
    });
  });
}
