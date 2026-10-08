import 'package:flutter_jungle_core/src/failures/iban_failure.dart';
import 'package:flutter_jungle_core/src/vos/iban_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IbanVos Unit Tests', () {
    group('Valid Cases', () {
      test('returns Right for a fully valid Spanish IBAN', () {
        // Valid standard Spanish IBAN (ES + mod-97 + valid bank/branch/check digits/account).
        const validIbans = ['ES9121000418450200051332'];

        for (final iban in validIbans) {
          final result = IbanVos(iban);

          expect(
            result.value.isRight(),
            true,
            reason: 'Failed for IBAN: $iban',
          );
          result.value.map(
            isLeft: (l) => fail('Should not return a failure for: $iban'),
            isRight: (r) => expect(r, iban),
          );
        }
      });

      test('trims leading and trailing whitespace', () {
        const input = '   ES9121000418450200051332   ';
        final result = IbanVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, 'ES9121000418450200051332'),
        );
      });
    });

    group('Failure Cases - Length', () {
      test(
        'returns IbanFailure.tooShort when shorter than 24 characters',
        () {
          const shortInputs = [
            '',
            'ES2114650100',
            'ES211465010072203087629', // 23 characters.
          ];

          for (final input in shortInputs) {
            final result = IbanVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Should fail because it is too short: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<IbanFailureTooShort>()),
              isRight: (r) => fail('Should not be valid: $input'),
            );
          }
        },
      );

      test(
        'returns IbanFailure.tooLong when longer than 24 characters',
        () {
          const longInputs = [
            'ES21146501007220308762930', // 25 characters.
            'ES2114650100722030876293000',
          ];

          for (final input in longInputs) {
            final result = IbanVos(input);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Should fail because it is too long: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<IbanFailureTooLong>()),
              isRight: (r) => fail('Should not be valid: $input'),
            );
          }
        },
      );
    });

    group('Failure Cases - Algorithm and Format (Invalid)', () {
      test(
        'returns IbanFailure.invalid when it does not match the initial regex',
        () {
          const invalidFormats = [
            '122114650100722030876293', // Starts with digits instead of a country code.
            'ESXX14650100722030876293', // Does not have 2 digits after the country code.
            'ES211465010072203087629#', // Disallowed special character.
          ];

          for (final input in invalidFormats) {
            final result = IbanVos(input);

            expect(result.value.isLeft(), true);
            result.value.map(
              isLeft: (l) => expect(l, isA<IbanFailureInvalid>()),
              isRight: (r) => fail('Should not accept format: $input'),
            );
          }
        },
      );

      test(
        'returns IbanFailure.invalid when the mod-97 check fails',
        () {
          // ES2114650100722030876293 is valid; change the initial mod-97 digits.
          const badChecksumIbans = [
            'ES0014650100722030876293',
            'ES9914650100722030876293',
          ];

          for (final input in badChecksumIbans) {
            final result = IbanVos(input);

            expect(result.value.isLeft(), true);
            result.value.map(
              isLeft: (l) => expect(l, isA<IbanFailureInvalid>()),
              isRight: (r) => fail('Should fail mod-97 for: $input'),
            );
          }
        },
      );

      test('returns IbanFailure.invalid when the Spanish check digits (DC) fail', () {
        // Keep the format but change the national check digits (positions 12-13).
        const badControlDigitsIbans = [
          'ES2114650100992030876293', // DC changed to '99'.
          'ES2114650100002030876293', // DC changed to '00'.
        ];

        for (final input in badControlDigitsIbans) {
          final result = IbanVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<IbanFailureInvalid>()),
            isRight: (r) => fail('Should fail the DC validation for: $input'),
          );
        }
      });
    });
  });
}
