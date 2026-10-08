import 'package:flutter_jungle_core/src/failures/cif_failure.dart';
import 'package:flutter_jungle_core/src/vos/cif_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CifVos Unit Tests', () {
    group('Valid Cases', () {
      test('returns Right for valid CIFs ending in a number', () {
        // Real, mathematically valid CIFs (public limited company, limited company).
        const validCifs = [
          'A28015865', // Telefónica S.A.
          'B81167413', // CIF with a valid numeric control character.
        ];

        for (final cif in validCifs) {
          final result = CifVos(cif);

          expect(result.value.isRight(), true, reason: 'Failed for CIF: $cif');
          result.value.map(
            isLeft: (l) => fail('Should not return a failure for: $cif'),
            isRight: (r) => expect(r, cif),
          );
        }
      });

      test('returns Right for valid CIFs ending in a letter', () {
        // Public entities, corporations, or organizations with a letter control character.
        const validLetterCifs = [
          'P2800001F', // Public entity (control 6 -> 'F').
          'Q2800001F', // Independent agency (control 6 -> 'F').
        ];

        for (final cif in validLetterCifs) {
          final result = CifVos(cif);

          expect(result.value.isRight(), true, reason: 'Failed for CIF: $cif');
          result.value.map(
            isLeft: (l) => fail('Should not return a failure for: $cif'),
            isRight: (r) => expect(r, cif),
          );
        }
      });

      test('converts to uppercase and trims automatically', () {
        const input = '  a28015865  ';
        final result = CifVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, 'A28015865'),
        );
      });
    });

    group('Failure Cases - Length', () {
      test(
        'returns CifFailure.tooShort when shorter than 9 characters',
        () {
          const shortInputs = ['', 'A1234567', 'B123'];

          for (final input in shortInputs) {
            final result = CifVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Should fail because it is too short: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<CifFailureTooShort>()),
              isRight: (r) => fail('Should not be valid: $input'),
            );
          }
        },
      );

      test('returns CifFailure.tooLong when longer than 9 characters', () {
        const longInputs = ['A280158659', 'B8116741300'];

        for (final input in longInputs) {
          final result = CifVos(input);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Should fail because it is too long: $input',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<CifFailureTooLong>()),
            isRight: (r) => fail('Should not be valid: $input'),
          );
        }
      });
    });

    group('Failure Cases - Format and Algorithm (Invalid)', () {
      test('returns CifFailure.invalid when the first letter is not an allowed entity type', () {
        // 'X', 'Y', and 'Z' are used by NIE/NIF, not CIF.
        const invalidFirstLetters = ['X28015865', 'Z81167413', 'I12345678'];

        for (final cif in invalidFirstLetters) {
          final result = CifVos(cif);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<CifFailureInvalid>()),
            isRight: (r) => fail('Should not accept initial letter: $cif'),
          );
        }
      });

      test('returns CifFailure.invalid when it does not match the 1 letter + 7 digits + 1 letter/digit structure', () {
        const invalidFormats = [
          'AA8015865', // Two initial letters.
          'A2801586%', // Special character at the end.
          '128015865', // Starts with a number.
        ];

        for (final cif in invalidFormats) {
          final result = CifVos(cif);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<CifFailureInvalid>()),
            isRight: (r) => fail('Should not accept format: $cif'),
          );
        }
      });

      test('returns CifFailure.invalid when the control digit/letter is incorrect', () {
        // A28015865 is valid; test with altered control characters.
        const wrongChecksumCifs = [
          'A28015860', // Incorrect control digit (should be 5).
          'P2807900Z', // Incorrect control letter.
        ];

        for (final cif in wrongChecksumCifs) {
          final result = CifVos(cif);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<CifFailureInvalid>()),
            isRight: (r) =>
                fail('Should reject incorrect checksum for: $cif'),
          );
        }
      });
    });
  });
}
