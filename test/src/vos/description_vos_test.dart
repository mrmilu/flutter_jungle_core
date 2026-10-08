import 'package:flutter_jungle_core/src/failures/description_failure.dart';
import 'package:flutter_jungle_core/src/vos/description_vos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DescriptionVos Unit Tests', () {
    group('Valid Cases', () {
      test('returns Right with a valid description', () {
        const input = 'This is a valid description for the Value Object.';
        final result = DescriptionVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) =>
              expect(r, 'This is a valid description for the Value Object.'),
        );
      });

      test('returns Right when it contains exactly 320 characters', () {
        final input = 'a' * 320; // String containing exactly 320 characters.
        final result = DescriptionVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r.length, 320),
        );
      });

      test('trims leading and trailing whitespace', () {
        const input = '   Description with whitespace   ';
        final result = DescriptionVos(input);

        expect(result.value.isRight(), true);
        result.value.map(
          isLeft: (l) => fail('Should not return a failure'),
          isRight: (r) => expect(r, 'Description with whitespace'),
        );
      });
    });

    group('Failure Cases - Empty', () {
      test(
        'returns DescriptionFailure.empty when the input is empty',
        () {
          const input = '';
          final result = DescriptionVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, const DescriptionFailure.empty()),
            isRight: (r) => fail('Should return a failure'),
          );
        },
      );

      test('returns DescriptionFailure.empty when the input contains only whitespace', () {
        const input = '     ';
        final result = DescriptionVos(input);

        expect(result.value.isLeft(), true);
        result.value.map(
          isLeft: (l) => expect(l, const DescriptionFailure.empty()),
          isRight: (r) => fail('Should return a failure'),
        );
      });
    });

    group('Failure Cases - TooLong', () {
      test(
        'returns DescriptionFailure.tooLong when longer than 320 characters',
        () {
          final input = 'a' * 321; // String containing 321 characters.
          final result = DescriptionVos(input);

          expect(result.value.isLeft(), true);
          result.value.map(
            isLeft: (l) => expect(l, const DescriptionFailure.tooLong()),
            isRight: (r) => fail('Should return DescriptionFailure.tooLong'),
          );
        },
      );
    });
  });
}
