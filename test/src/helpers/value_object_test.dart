import 'package:flutter_jungle_core/src/helpers/either.dart';
import 'package:flutter_jungle_core/src/helpers/value_object.dart';
import 'package:flutter_test/flutter_test.dart';

// Importa tu Either y ValueObject aquí
// import 'package:tu_proyecto/domain/either.dart';
// import 'package:tu_proyecto/domain/value_object.dart';

/// Concrete implementation of [ValueObject] for testing purposes.
class TestValueObject extends ValueObject<String, int> {
  @override
  final Either<String, int> value;

  const TestValueObject(this.value);
}

void main() {
  group('ValueObject', () {
    const tValidValue = 42;
    const tFailure = 'Invalid number';

    final validObject = TestValueObject(Either.right(tValidValue));
    final invalidObject = TestValueObject(Either.left(tFailure));

    group('isValid & isInvalid', () {
      test('should return true for isValid when value is Right', () {
        expect(validObject.isValid(), isTrue);
        expect(validObject.isInvalid(), isFalse);
      });

      test('should return true for isInvalid when value is Left', () {
        expect(invalidObject.isInvalid(), isTrue);
        expect(invalidObject.isValid(), isFalse);
      });
    });

    group('getOrCrash', () {
      test('should return right value when object is valid', () {
        expect(validObject.getOrCrash(), equals(tValidValue));
      });

      test('should throw UnexpectedValueError<L> when object is invalid', () {
        expect(
          () => invalidObject.getOrCrash(),
          throwsA(
            isA<UnexpectedValueError<String>>().having(
              (e) => e.valueFailure,
              'valueFailure',
              equals(tFailure),
            ),
          ),
        );
      });
    });

    group('getOrElse', () {
      test('should return underlying value when object is valid', () {
        expect(validObject.getOrElse(0), equals(tValidValue));
      });

      test('should return fallback value when object is invalid', () {
        expect(invalidObject.getOrElse(0), equals(0));
      });
    });

    group('when', () {
      test('should execute isRight callback when object is valid', () {
        int? captured;

        validObject.when(
          isLeft: (_) => fail('Should not call isLeft'),
          isRight: (val) => captured = val,
        );

        expect(captured, equals(tValidValue));
      });

      test('should execute isLeft callback when object is invalid', () {
        String? captured;

        invalidObject.when(
          isLeft: (failure) => captured = failure,
          isRight: (_) => fail('Should not call isRight'),
        );

        expect(captured, equals(tFailure));
      });
    });

    group('map', () {
      test('should map isRight result when object is valid', () {
        final result = validObject.map(
          isLeft: (_) => 'mapped_left',
          isRight: (val) => 'mapped_right_$val',
        );

        expect(result, equals('mapped_right_42'));
      });

      test('should map isLeft result when object is invalid', () {
        final result = invalidObject.map(
          isLeft: (failure) => 'mapped_left_$failure',
          isRight: (_) => 'mapped_right',
        );

        expect(result, equals('mapped_left_Invalid number'));
      });
    });

    group('Value Equality (== & hashCode)', () {
      test('should evaluate identical ValueObjects as equal', () {
        final obj1 = TestValueObject(Either.right(42));
        final obj2 = TestValueObject(Either.right(42));

        expect(obj1 == obj1, isTrue);
        expect(obj1, equals(obj2));
        expect(obj1.hashCode, equals(obj2.hashCode));
      });

      test(
        'should evaluate ValueObjects with different values as not equal',
        () {
          final obj1 = TestValueObject(Either.right(42));
          final obj2 = TestValueObject(Either.right(99));

          expect(obj1, isNot(equals(obj2)));
        },
      );
    });

    group('toString', () {
      test('should format String representation correctly', () {
        expect(
          validObject.toString(),
          equals('Value(${Either.right(tValidValue)})'),
        );
      });
    });
  });

  group('UnexpectedValueError', () {
    test(
      'should construct with valueFailure and format toString correctly',
      () {
        const failureMessage = 'Sample Failure';
        final error = UnexpectedValueError<String>(failureMessage);

        expect(error.valueFailure, equals(failureMessage));
        expect(
          error.toString(),
          contains('Encountered a ValueFailure at an unrecoverable point.'),
        );
        expect(error.toString(), contains('Failure was:Sample Failure'));
      },
    );
  });
}
