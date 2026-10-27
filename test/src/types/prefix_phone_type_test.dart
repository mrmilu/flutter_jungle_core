import 'package:flutter_jungle_core/src/types/prefix_phone_type.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PrefixPhoneType', () {
    test('every value has a code, a prefix and a mask', () {
      for (final type in PrefixPhoneType.values) {
        expect(type.code, matches(RegExp(r'^[A-Z]{2}$')), reason: type.name);
        expect(type.prefix, startsWith('+'), reason: type.name);
        expect(type.mask, isNotEmpty, reason: type.name);
      }
    });

    group('getByPrefix', () {
      test('returns the first value matching the prefix', () {
        expect(PrefixPhoneType.getByPrefix('+34'), PrefixPhoneType.spain);
        expect(PrefixPhoneType.getByPrefix('+49'), PrefixPhoneType.germany);
        expect(PrefixPhoneType.getByPrefix('+358'), PrefixPhoneType.finland);
      });

      test('returns a value whose prefix matches for every prefix', () {
        for (final type in PrefixPhoneType.values) {
          expect(PrefixPhoneType.getByPrefix(type.prefix).prefix, type.prefix);
        }
      });

      test('falls back to spain for an unknown prefix', () {
        expect(PrefixPhoneType.getByPrefix('+000'), PrefixPhoneType.spain);
        expect(PrefixPhoneType.getByPrefix(''), PrefixPhoneType.spain);
      });
    });

    group('toString and fromString', () {
      test('toString returns the value name', () {
        for (final type in PrefixPhoneType.values) {
          expect(type.toString(), type.name);
        }
      });

      test('fromString round-trips every value', () {
        for (final type in PrefixPhoneType.values) {
          expect(PrefixPhoneType.fromString(type.toString()), type);
        }
      });

      test('fromString falls back to spain for an unknown name', () {
        expect(PrefixPhoneType.fromString('unknown'), PrefixPhoneType.spain);
        expect(PrefixPhoneType.fromString(''), PrefixPhoneType.spain);
      });
    });

    group('map', () {
      Map<Symbol, Function> callbacks() => {
        for (final type in PrefixPhoneType.values)
          Symbol(type.name): () => type.name,
      };

      test('calls the callback matching every value', () {
        for (final type in PrefixPhoneType.values) {
          final result = Function.apply(type.map, const [], callbacks());

          expect(result, type.name);
        }
      });

      test('only calls the callback of the current value', () {
        final called = <String>[];
        final named = {
          for (final type in PrefixPhoneType.values)
            Symbol(type.name): () {
              called.add(type.name);
              return type.name;
            },
        };

        Function.apply(PrefixPhoneType.france.map, const [], named);

        expect(called, ['france']);
      });
    });
  });
}
