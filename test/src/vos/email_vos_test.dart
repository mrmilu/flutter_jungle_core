import 'package:flutter_jungle_core/src/failures/email_failure.dart';
import 'package:flutter_jungle_core/src/vos/email_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EmailVos Unit Tests', () {
    group('Valid Cases', () {
      test('returns Right for valid email addresses in standard format', () {
        const validEmails = [
          'user@example.com',
          'first.last@domain.co',
          'user+tag@example.org',
          'admin@sub.domain.es',
          'user_123@domain.com.mx',
        ];

        for (final email in validEmails) {
          final result = EmailVos(email);

          expect(result.value.isRight(), true, reason: 'Failed for: $email');
          result.value.map(
            isLeft: (l) => fail('Should not return a failure for: $email'),
            isRight: (r) => expect(r, email),
          );
        }
      });

      test('trims leading and trailing whitespace', () {
        const input = '   test@example.com   ';
        final result = EmailVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, 'test@example.com'),
        );
      });
    });

    group('Failure Cases - Empty', () {
      test('returns EmailFailure.empty when the input is empty', () {
        const input = '';
        final result = EmailVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const EmailFailure.empty()),
          isRight: (r) => fail('Should return a failure'),
        );
      });

      test('returns EmailFailure.empty when the input contains only whitespace', () {
        const input = '     ';
        final result = EmailVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const EmailFailure.empty()),
          isRight: (r) => fail('Should return a failure'),
        );
      });
    });

    group('Failure Cases - Invalid', () {
      test('returns EmailFailure.invalid for malformed email addresses', () {
        const invalidEmails = [
          'missing_at_sign.com',
          'user@',
          '@domain.com',
          'user@domain',
          'user@domain.c', // One-character TLD (the regex requires {2,}).
          'user@.com',
          'user with spaces@domain.com',
          'user@domain..com',
        ];

        for (final email in invalidEmails) {
          final result = EmailVos(email);

          expect(
            result.value.isLeft(),
            true,
            reason: 'Should be invalid: $email',
          );
          result.value.map(
            isLeft: (l) => expect(
              l,
              const EmailFailure.invalid(),
              reason: 'Incorrect failure for: $email',
            ),
            isRight: (r) => fail('Should not be valid: $email'),
          );
        }
      });
    });
  });
}
