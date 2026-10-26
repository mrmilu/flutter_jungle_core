import 'package:flutter_jungle_core/src/helpers/either.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Either', () {
    group('constructors', () {
      test('creates a left value', () {
        final result = Either<String, int>.left('failure');

        expect(result.left, 'failure');
        expect(result.right, isNull);
      });

      test('creates a right value', () {
        final result = Either<String, int>.right(42);

        expect(result.left, isNull);
        expect(result.right, 42);
      });

      test('top-level helpers create the corresponding side', () {
        expect(
          left<String, int>('failure'),
          Either<String, int>.left('failure'),
        );
        expect(right<String, int>(42), Either<String, int>.right(42));
      });
    });

    group('when', () {
      test('calls only the left callback for a left value', () {
        final result = Either<String, int>.left('failure');
        var leftValue = '';
        var rightCalled = false;

        result.when(
          isLeft: (value) => leftValue = value,
          isRight: (_) => rightCalled = true,
        );

        expect(leftValue, 'failure');
        expect(rightCalled, isFalse);
      });

      test('calls only the right callback for a right value', () {
        final result = Either<String, int>.right(42);
        var rightValue = 0;
        var leftCalled = false;

        result.when(
          isLeft: (_) => leftCalled = true,
          isRight: (value) => rightValue = value,
        );

        expect(rightValue, 42);
        expect(leftCalled, isFalse);
      });
    });

    group('whenIsLeft and whenIsRight', () {
      test('whenIsLeft calls the callback only for a left value', () {
        final result = Either<String, int>.left('failure');
        var leftValue = '';

        result.whenIsLeft((value) => leftValue = value);

        expect(leftValue, 'failure');
        expect(
          () => Either<String, int>.right(42).whenIsLeft((_) {
            fail('The left callback should not be called for a right value');
          }),
          returnsNormally,
        );
      });

      test('whenIsRight calls the callback only for a right value', () {
        final result = Either<String, int>.right(42);
        var rightValue = 0;

        result.whenIsRight((value) => rightValue = value);

        expect(rightValue, 42);
        expect(
          () => Either<String, int>.left('failure').whenIsRight((_) {
            fail('The right callback should not be called for a left value');
          }),
          returnsNormally,
        );
      });
    });

    group('map', () {
      test('maps the left value', () {
        final result = Either<String, int>.left('failure');

        expect(
          result.map(
            isLeft: (value) => 'Error: $value',
            isRight: (value) => 'Value: $value',
          ),
          'Error: failure',
        );
      });

      test('maps the right value', () {
        final result = Either<String, int>.right(42);

        expect(
          result.map(
            isLeft: (value) => 'Error: $value',
            isRight: (value) => 'Value: $value',
          ),
          'Value: 42',
        );
      });
    });

    group('side checks', () {
      test('identifies left and right values', () {
        expect(Either<String, int>.left('failure').isLeft(), isTrue);
        expect(Either<String, int>.left('failure').isRight(), isFalse);
        expect(Either<String, int>.right(42).isLeft(), isFalse);
        expect(Either<String, int>.right(42).isRight(), isTrue);
      });
    });

    group('rightOrElse', () {
      test('returns the right value when present', () {
        final result = Either<String, int>.right(42);

        expect(result.rightOrElse((_) => 0), 42);
      });

      test('computes a fallback from the left value', () {
        final result = Either<String, int>.left('failure');

        expect(result.rightOrElse((message) => message.length), 7);
      });
    });

    group('copyWith', () {
      test('returns a copy with the provided value', () {
        final result = Either<String, int>.left('failure');

        expect(
          result.copyWith(right: 42),
          Either<String, int>(left: 'failure', right: 42),
        );
      });

      test('preserves existing values when no replacement is provided', () {
        final result = Either<String, int>.right(42);

        expect(result.copyWith(), result);
      });
    });

    test('implements equality, hashCode, and toString', () {
      final result = Either<String, int>.left('failure');
      final equalResult = Either<String, int>.left('failure');

      expect(result == result, isTrue);
      expect(result, equalResult);
      expect(result.hashCode, equalResult.hashCode);
      expect(result.toString(), 'Either(left: failure, right: null)');
      expect(result, isNot(Either<String, int>.right(42)));
    });
  });
}
