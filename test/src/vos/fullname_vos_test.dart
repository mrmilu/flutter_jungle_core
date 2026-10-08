import 'package:flutter_jungle_core/src/failures/fullname_failure.dart';
import 'package:flutter_jungle_core/src/vos/fullname_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FullnameVos Unit Tests', () {
    group('Valid Cases', () {
      test('returns Right for a valid single name', () {
        const input = 'Juan';
        final result = FullnameVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, 'Juan'),
        );
      });

      test('returns Right for a valid first and last name', () {
        const input = 'María del Carmen';
        final result = FullnameVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, 'María del Carmen'),
        );
      });

      test('allows accented characters, including ñ', () {
        const input = 'Iñigo Peña';
        final result = FullnameVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, 'Iñigo Peña'),
        );
      });

      test('trims leading and trailing whitespace', () {
        const input = '   Carlos Ruiz   ';
        final result = FullnameVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, 'Carlos Ruiz'),
        );
      });
    });

    group('Failure Cases - Empty', () {
      test(
        'returns FullnameFailure.empty when the input is empty',
        () {
          const input = '';
          final result = FullnameVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, const FullnameFailure.empty()),
            isRight: (r) => fail('Should return a failure'),
          );
        },
      );

      test('returns FullnameFailure.empty when the input contains only whitespace', () {
        const input = '   ';
        final result = FullnameVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const FullnameFailure.empty()),
          isRight: (r) => fail('Should return a failure'),
        );
      });
    });

    group('Failure Cases - Invalid', () {
      test(
        'returns FullnameFailure.invalid when it contains numbers or symbols',
        () {
          const inputs = ['Juan123', 'Ana@Lopez', 'Pedro_Gomez'];

          for (final input in inputs) {
            final result = FullnameVos(input);
            expect(result.value.isLeft(), true);
            result.value.map(
              isLeft: (l) => expect(l, const FullnameFailure.invalid()),
              isRight: (r) => fail('Should fail for input: $input'),
            );
          }
        },
      );

      test('returns FullnameFailure.invalid if any word has fewer than 2 letters', () {
        const input = 'A Perez'; // 'A' has 1 letter.
        final result = FullnameVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const FullnameFailure.invalid()),
          isRight: (r) =>
              fail('Should fail when a word has fewer than 2 letters'),
        );
      });

      test('returns FullnameFailure.invalid if it exceeds the 4-word limit', () {
        const input = 'Juan Carlos Perez Gomez Silva'; // 5 words.
        final result = FullnameVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const FullnameFailure.invalid()),
          isRight: (r) => fail('Should fail when it contains more than 4 words'),
        );
      });
    });

    group('Failure Cases - TooLong', () {
      test(
        'returns FullnameFailure.tooLong when longer than 30 characters',
        () {
          // "Alejandrina Constantina de la Trinidad" is longer than 30 characters.
          const input = 'Alejandrina Constantina Trinidad'; // 32 characters.
          final result = FullnameVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, const FullnameFailure.tooLong()),
            isRight: (r) => fail('Should return FullnameFailure.tooLong'),
          );
        },
      );
    });
  });
}
