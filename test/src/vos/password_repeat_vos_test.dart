import 'package:flutter_jungle_core/src/failures/password_repeat_failure.dart';
import 'package:flutter_jungle_core/src/vos/password_repeat_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('RepeatPasswordVos Unit Tests', () {
    group('Valid Cases', () {
      test(
        'returns Right when the passwords match exactly',
        () {
          const password = 'MyPassword123!';
          const passToMatchWith = 'MyPassword123!';

          final result = RepeatPasswordVos(
            password: password,
            passToMatchWith: passToMatchWith,
          );

          expect(result.value.isRight(), true);
          result.value.map(
            isLeft: (l) => fail('Should not return a failure when they match'),
            isRight: (r) => expect(r, password),
          );
        },
      );

      test('returns Right when both strings are empty', () {
        const password = '';
        const passToMatchWith = '';

        final result = RepeatPasswordVos(
          password: password,
          passToMatchWith: passToMatchWith,
        );

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, ''),
        );
      });
    });

    group('Failure Cases - Mismatched', () {
      test('returns PasswordRepeatFailure.mismatched when the passwords do not match', () {
        const password = 'Password123!';
        const passToMatchWith = 'Password456!';

        final result = RepeatPasswordVos(
          password: password,
          passToMatchWith: passToMatchWith,
        );

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PasswordRepeatFailureMismatched>()),
          isRight: (r) => fail('Should return a failure because they do not match'),
        );
      });

      test('returns PasswordRepeatFailure.mismatched when the passwords differ by case', () {
        const password = 'Password123';
        const passToMatchWith = 'password123';

        final result = RepeatPasswordVos(
          password: password,
          passToMatchWith: passToMatchWith,
        );

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PasswordRepeatFailureMismatched>()),
          isRight: (r) =>
              fail('Should fail because the letter case differs'),
        );
      });

      test('returns PasswordRepeatFailure.mismatched when one password has extra whitespace', () {
        const password = 'Password123 ';
        const passToMatchWith = 'Password123';

        final result = RepeatPasswordVos(
          password: password,
          passToMatchWith: passToMatchWith,
        );

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, isA<PasswordRepeatFailureMismatched>()),
          isRight: (r) => fail('Should fail because of extra whitespace'),
        );
      });
    });
  });
}
