import 'package:flutter_jungle_core/src/failures/nif_failure.dart';
import 'package:flutter_jungle_core/src/vos/nif_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NifVos Unit Tests', () {
    group('Valid Cases', () {
      test('returns Right for a valid NIF/DNI', () {
        // Valid NIFs according to the modulo 23 algorithm.
        const validNifs = [
          '12345678Z', // 12345678 % 23 = 14 -> 'Z'
          '00000000T', // 0 % 23 = 0 -> 'T'
          '87654321X', // 87654321 % 23 = 10 -> 'X'
        ];

        for (final nif in validNifs) {
          final result = NifVos(nif);

          expect(result.value.isRight(), true, reason: 'Failed for NIF: $nif');
          result.value.map(
            isLeft: (l) => fail('Should not return a failure for: $nif'),
            isRight: (r) => expect(r, nif),
          );
        }
      });

      test('trims leading and trailing whitespace', () {
        const input = '   12345678Z   ';
        final result = NifVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, '12345678Z'),
        );
      });
    });

    group('Failure Cases - Length', () {
      test(
        'returns NifFailure.tooShort when shorter than 9 characters',
        () {
          const shortInputs = [
            '',
            '12345678', // Missing the letter (8 characters).
            '1234567Z', // 7 digits + letter (8 characters).
          ];

          for (final input in shortInputs) {
            final result = NifVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Should fail because it is too short: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<NifFailureTooShort>()),
              isRight: (r) => fail('Should not be valid: $input'),
            );
          }
        },
      );

      test('returns NifFailure.tooLong when longer than 9 characters', () {
        const longInputs = [
          '123456789Z', // 9 digits + letter (10 characters).
          '12345678ZZ', // 8 digits + 2 letters (10 characters).
        ];

        for (final input in longInputs) {
          final result = NifVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Should fail because it is too long: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<NifFailureTooLong>()),
            isRight: (r) => fail('Should not be valid: $input'),
          );
        }
      });
    });

    group('Failure Cases - Format and Algorithm (Invalid)', () {
      test('returns NifFailure.invalid if the format is invalid (e.g. lowercase letter or symbols)', () {
        const invalidFormats = [
          '12345678z', // Lowercase letter (the regex requires [A-Z]).
          'X2345678Z', // Letter at the start (NIE format, not NIF).
          '1234A678Z', // Letter in the middle.
          '12345678#', // Special character.
        ];

        for (final input in invalidFormats) {
          final result = NifVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Should be invalid: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<NifFailureInvalid>()),
            isRight: (r) => fail('Should not be valid: $input'),
          );
        }
      });

      test('returns NifFailure.invalid if the control letter does not match', () {
        // The correct letter for 12345678 is Z; test with incorrect letters.
        const badChecksumNifs = ['12345678A', '12345678B', '00000000A'];

        for (final input in badChecksumNifs) {
          final result = NifVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Should fail checksum for: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<NifFailureInvalid>()),
            isRight: (r) => fail('Should not be valid: $input'),
          );
        }
      });
    });
  });
}
