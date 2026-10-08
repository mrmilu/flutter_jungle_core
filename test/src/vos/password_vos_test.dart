import 'package:flutter_jungle_core/src/failures/password_failure.dart';
import 'package:flutter_jungle_core/src/vos/password_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PasswordVos Unit Tests', () {
    group('Valid Cases', () {
      test(
        'returns Right for passwords that meet all criteria',
        () {
          const validPasswords = [
            'Password123!',
            'A1b2c3d4#',
            'SecurePass1\$',
            'Secret123@Safe',
          ];

          for (final pass in validPasswords) {
            final result = PasswordVos(pass);

            expect(result.value.isRight(), true, reason: 'Failed for: $pass');
            result.value.map(
              isLeft: (l) => fail('Should not return a failure for: $pass'),
              isRight: (r) => expect(r, pass),
            );
          }
        },
      );

      test('trims leading and trailing whitespace', () {
        const input = '   Password123!   ';
        final result = PasswordVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, 'Password123!'),
        );
      });
    });

    group('Failure Cases', () {
      test('returns PasswordFailure.minLength if the password has fewer than 8 characters or is empty', () {
        const shortPasswords = ['', '   ', 'Pass1!', 'A1b2c3!'];

        for (final pass in shortPasswords) {
          final result = PasswordVos(pass);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Should fail because of length: $pass',
          );
          result.value.map(
            isLeft: (l) => expect(l, isA<PasswordFailureInvalidMinLength>()),
            isRight: (r) => fail('Should not be valid: $pass'),
          );
        }
      });

      test(
        'returns PasswordFailure.includeUppercase if uppercase is missing',
        () {
          const noUppercase = 'password123!';
          final result = PasswordVos(noUppercase);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<PasswordFailureIncludeUppercase>()),
            isRight: (r) => fail('Should fail because uppercase is missing'),
          );
        },
      );

      test(
        'returns PasswordFailure.includeLowercase if lowercase is missing',
        () {
          const noLowercase = 'PASSWORD123!';
          final result = PasswordVos(noLowercase);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, isA<PasswordFailureIncludeLowercase>()),
            isRight: (r) => fail('Should fail because lowercase is missing'),
          );
        },
      );

      test('returns PasswordFailure.includeSpecialCharacter if a special character is missing', () {
        const noSpecialChar = 'Password123';
        final result = PasswordVos(noSpecialChar);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) =>
              expect(l, isA<PasswordFailureIncludeSpecialCharacter>()),
          isRight: (r) => fail('Should fail because a special character is missing'),
        );
      });

      test('returns PasswordFailure.includeDigit if a digit is missing', () {
        const noDigit = 'Password!';
        final result = PasswordVos(noDigit);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PasswordFailureIncludeDigit>()),
          isRight: (r) => fail('Should fail because a digit is missing'),
        );
      });
    });
  });
}
