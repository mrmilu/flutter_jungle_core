import 'package:flutter_jungle_core/src/failures/phone_failure.dart';
import 'package:flutter_jungle_core/src/vos/phone_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PhoneVos Unit Tests', () {
    group('Valid Cases', () {
      test('returns Right when the phone number contains only digits/spaces and matches maxLength', () {
        const input = '612345678';
        const maxLength = 9;

        final result = PhoneVos(input, maxLength);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure for: $input'),
          isRight: (r) => expect(r, input),
        );
      });

      test('returns Right when it contains internal whitespace and meets maxLength', () {
        const input = '612 34 56';
        const maxLength = 9;

        final result = PhoneVos(input, maxLength);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure for: $input'),
          isRight: (r) => expect(r, input),
        );
      });

      test('trims leading and trailing whitespace', () {
        const input = '   612345678   ';
        const maxLength = 9;

        final result = PhoneVos(input, maxLength);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, '612345678'),
        );
      });
    });

    group('Failure Cases - Empty', () {
      test('returns PhoneFailure.empty when the input is empty or contains only whitespace', () {
        const emptyInputs = ['', '   '];
        const maxLength = 9;

        for (final input in emptyInputs) {
          final result = PhoneVos(input, maxLength);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<PhoneFailureEmpty>()),
            isRight: (r) => fail('Should be empty for: $input'),
          );
        }
      });
    });

    group('Failure Cases - Invalid', () {
      test(
        'returns PhoneFailure.invalid if it contains letters or symbols',
        () {
          const invalidInputs = ['61234567a', '+34612345', '612-345-67'];
          const maxLength = 9;

          for (final input in invalidInputs) {
            final result = PhoneVos(input, maxLength);

            expect(
              result.value.isLeft(),
              true,
              reason: 'Should be invalid: $input',
            );
            result.value.map(
              isLeft: (l) => expect(l, isA<PhoneFailureInvalid>()),
              isRight: (r) => fail('Should not be valid: $input'),
            );
          }
        },
      );

      test(
        'returns PhoneFailure.invalid if the length is less than maxLength',
        () {
          const input = '61234567'; // 8 characters.
          const maxLength = 9;

          final result = PhoneVos(input, maxLength);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<PhoneFailureInvalid>()),
            isRight: (r) =>
                fail('Should fail because the length is insufficient'),
          );
        },
      );
    });

    group('Failure Cases - TooLong', () {
      test('returns PhoneFailure.tooLong if the length exceeds maxLength', () {
        const input = '6123456789'; // 10 characters.
        const maxLength = 9;

        final result = PhoneVos(input, maxLength);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PhoneFailureTooLong>()),
          isRight: (r) => fail('Should fail because it exceeds maxLength'),
        );
      });
    });
  });
}
