import 'package:flutter_jungle_core/src/types/nationality_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NationalityType', () {
    test('every value has a unique, two-letter uppercase code', () {
      final codes = NationalityType.values.map((e) => e.code).toList();

      expect(codes.toSet(), hasLength(codes.length));
      for (final code in codes) {
        expect(code, matches(RegExp(r'^[A-Z]{2}$')));
      }
    });

    group('fromCode', () {
      test('returns the matching value for every code', () {
        for (final type in NationalityType.values) {
          expect(NationalityType.fromCode(type.code), type);
        }
      });

      test('falls back to spain for an unknown code', () {
        expect(NationalityType.fromCode('XX'), NationalityType.spain);
        expect(NationalityType.fromCode(''), NationalityType.spain);
      });

      test('is case sensitive', () {
        expect(NationalityType.fromCode('gb'), NationalityType.spain);
      });
    });

    group('map', () {
      // Builds the named callbacks for every value, returning its own name.
      Map<Symbol, Function> callbacks() => {
        for (final type in NationalityType.values)
          Symbol(type.name): () => type.name,
      };

      test('calls the callback matching every value', () {
        for (final type in NationalityType.values) {
          final result = Function.apply(type.map, const [], callbacks());

          expect(result, type.name);
        }
      });

      test('only calls the callback of the current value', () {
        final called = <String>[];
        final named = {
          for (final type in NationalityType.values)
            Symbol(type.name): () {
              called.add(type.name);
              return type.name;
            },
        };

        Function.apply(NationalityType.france.map, const [], named);

        expect(called, ['france']);
      });
    });
  });
}
