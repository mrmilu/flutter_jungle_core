import 'package:flutter_jungle_core/src/failures/nie_failure.dart';
import 'package:flutter_jungle_core/src/vos/nie_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NieVos Unit Tests', () {
    group('Valid Cases', () {
      test(
        'returns Right for valid NIEs with the X, Y, and Z prefixes',
        () {
          // NIEs with control letters calculated using modulo 23.
          const validNies = [
            'X1234567L', // Prefijo X (01234567 % 23 = 11 -> 'L')
            'Y1234567X', // Prefijo Y (11234567 % 23 = 10 -> 'X')
            'Z1234567R', // Prefijo Z (21234567 % 23 = 1 -> 'R')
          ];

          for (final nie in validNies) {
            final result = NieVos(nie);

            expect(
              result.value.isRight(),
              true,
              reason: 'Failed for NIE: $nie',
            );
            result.value.map(
              isLeft: (l) => fail('Should not return a failure for: $nie'),
              isRight: (r) => expect(r, nie),
            );
          }
        },
      );

      test(
        'converts to uppercase and trims leading and trailing whitespace',
        () {
          const input = '   x1234567l   ';
          final result = NieVos(input);

          expect(result.value.isRight(), true);
          result.value.map(
            isLeft: (l) => fail('Should not return a failure'),
            isRight: (r) => expect(r, 'X1234567L'),
          );
        },
      );
    });

    group('Failure Cases - Invalid', () {
      test(
        'returns NieFailure.invalid if the initial letter is not X, Y, or Z',
        () {
          // 'A' and 'B' are used by NIF or CIF, not NIE.
          const invalidPrefixes = ['A1234567L', 'B1234567X', '11234567L'];

          for (final input in invalidPrefixes) {
            final result = NieVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Should fail for: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<NieFailureInvalid>()),
              isRight: (r) => fail('Should not be valid: $input'),
            );
          }
        },
      );

      test('returns NieFailure.invalid if the length or structure is incorrect', () {
        const invalidFormats = [
          '',
          'X123456L', // 6 digits instead of 7.
          'X12345678L', // 8 digits instead of 7.
          'X123A567L', // Letter in the middle.
          'X12345671', // Number at the end instead of a letter.
        ];

        for (final input in invalidFormats) {
          final result = NieVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Should fail for: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<NieFailureInvalid>()),
            isRight: (r) => fail('Should not be valid: $input'),
          );
        }
      });

      test(
        'returns NieFailure.invalid if the control letter does not match',
        () {
          // X1234567L is correct; test with altered control letters.
          const badChecksumNies = ['X1234567A', 'Y1234567B', 'Z1234567C'];

          for (final input in badChecksumNies) {
            final result = NieVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Should fail checksum for: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<NieFailureInvalid>()),
              isRight: (r) => fail('Should not be valid: $input'),
            );
          }
        },
      );
    });
  });
}
