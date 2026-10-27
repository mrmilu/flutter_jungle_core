import 'package:flutter_jungle_core/src/helpers/result_or.dart';
import 'package:flutter_test/flutter_test.dart';

// Importa tu archivo donde esté declarada la clase ResultOr
// import 'package:tu_proyecto/domain/result_or.dart';

void main() {
  group('ResultOr', () {
    const tFailure = 'Sample Failure';

    group('Constructors & Getters', () {
      test('ResultOr.none should initialize ResultOrNone correctly', () {
        const result = ResultOr<String>.none();

        expect(result, isA<ResultOrNone<String>>());
        expect(result.isNone, isTrue);
        expect(result.isLoading, isFalse);
        expect(result.isSuccess, isFalse);
        expect(result.isFailure, isFalse);
        expect(result.failure, isNull);
      });

      test('ResultOr.loading should initialize ResultOrLoading correctly', () {
        const result = ResultOr<String>.loading();

        expect(result, isA<ResultOrLoading<String>>());
        expect(result.isNone, isFalse);
        expect(result.isLoading, isTrue);
        expect(result.isSuccess, isFalse);
        expect(result.isFailure, isFalse);
        expect(result.failure, isNull);
      });

      test('ResultOr.success should initialize ResultOrSuccess correctly', () {
        const result = ResultOr<String>.success();

        expect(result, isA<ResultOrSuccess<String>>());
        expect(result.isNone, isFalse);
        expect(result.isLoading, isFalse);
        expect(result.isSuccess, isTrue);
        expect(result.isFailure, isFalse);
        expect(result.failure, isNull);
      });

      test('ResultOr.failure should initialize ResultOrFailure correctly', () {
        const result = ResultOr<String>.failure(tFailure);

        expect(result, isA<ResultOrFailure<String>>());
        expect(result.isNone, isFalse);
        expect(result.isLoading, isFalse);
        expect(result.isSuccess, isFalse);
        expect(result.isFailure, isTrue);
        expect(result.failure, equals(tFailure));
      });
    });

    group('whenIsSuccess', () {
      test('should execute callback when ResultOr.success', () {
        const result = ResultOr<String>.success();
        bool isSuccessCalled = false;

        result.whenIsSuccess(() {
          isSuccessCalled = true;
        });

        expect(isSuccessCalled, isTrue);
      });

      test('should NOT execute callback when state is not success', () {
        const result = ResultOr<String>.loading();
        bool isSuccessCalled = false;

        result.whenIsSuccess(() {
          isSuccessCalled = true;
        });

        expect(isSuccessCalled, isFalse);
      });
    });

    group('whenIsFailure', () {
      test(
        'should execute callback and return failure when ResultOr.failure',
        () {
          const result = ResultOr<String>.failure(tFailure);
          String? capturedFailure;

          final returnValue = result.whenIsFailure((failure) {
            capturedFailure = failure;
          });

          expect(capturedFailure, equals(tFailure));
          expect(returnValue, equals(tFailure));
        },
      );

      test(
        'should NOT execute callback and return null when state is not failure',
        () {
          const result = ResultOr<String>.success();
          bool isFailureCalled = false;

          final returnValue = result.whenIsFailure((_) {
            isFailureCalled = true;
          });

          expect(isFailureCalled, isFalse);
          expect(returnValue, isNull);
        },
      );
    });

    group('when', () {
      test('should call isNone when state is ResultOrNone', () {
        const result = ResultOr<String>.none();
        bool isNoneCalled = false;

        result.when(
          none: () => isNoneCalled = true,
          loading: () => fail('Should not call isLoading'),
          success: () => fail('Should not call isSuccess'),
          failure: (_) => fail('Should not call isFailure'),
        );

        expect(isNoneCalled, isTrue);
      });

      test('should call isLoading when state is ResultOrLoading', () {
        const result = ResultOr<String>.loading();
        bool isLoadingCalled = false;

        result.when(
          none: () => fail('Should not call isNone'),
          loading: () => isLoadingCalled = true,
          success: () => fail('Should not call isSuccess'),
          failure: (_) => fail('Should not call isFailure'),
        );

        expect(isLoadingCalled, isTrue);
      });

      test('should call isSuccess when state is ResultOrSuccess', () {
        const result = ResultOr<String>.success();
        bool isSuccessCalled = false;

        result.when(
          none: () => fail('Should not call isNone'),
          loading: () => fail('Should not call isLoading'),
          success: () => isSuccessCalled = true,
          failure: (_) => fail('Should not call isFailure'),
        );

        expect(isSuccessCalled, isTrue);
      });

      test(
        'should call isFailure with payload when state is ResultOrFailure',
        () {
          const result = ResultOr<String>.failure(tFailure);
          String? capturedFailure;

          result.when(
            none: () => fail('Should not call isNone'),
            loading: () => fail('Should not call isLoading'),
            success: () => fail('Should not call isSuccess'),
            failure: (failure) => capturedFailure = failure,
          );

          expect(capturedFailure, equals(tFailure));
        },
      );
    });

    group('map', () {
      test('should map ResultOrNone correctly', () {
        const result = ResultOr<String>.none();

        final mapped = result.when<String>(
          none: () => 'none_mapped',
          loading: () => 'loading_mapped',
          success: () => 'success_mapped',
          failure: (failure) => 'failure_$failure',
        );

        expect(mapped, equals('none_mapped'));
      });

      test('should map ResultOrLoading correctly', () {
        const result = ResultOr<String>.loading();

        final mapped = result.when<String>(
          none: () => 'none_mapped',
          loading: () => 'loading_mapped',
          success: () => 'success_mapped',
          failure: (failure) => 'failure_$failure',
        );

        expect(mapped, equals('loading_mapped'));
      });

      test('should map ResultOrSuccess correctly', () {
        const result = ResultOr<String>.success();

        final mapped = result.when<String>(
          none: () => 'none_mapped',
          loading: () => 'loading_mapped',
          success: () => 'success_mapped',
          failure: (failure) => 'failure_$failure',
        );

        expect(mapped, equals('success_mapped'));
      });

      test('should map ResultOrFailure correctly', () {
        const result = ResultOr<String>.failure(tFailure);

        final mapped = result.when<String>(
          none: () => 'none_mapped',
          loading: () => 'loading_mapped',
          success: () => 'success_mapped',
          failure: (failure) => 'failure_$failure',
        );

        expect(mapped, equals('failure_$tFailure'));
      });
    });

    group('maybeWhen', () {
      test('should execute isNone callback when state is ResultOrNone', () {
        const result = ResultOr<String>.none();
        bool isNoneCalled = false;

        result.maybeWhen(
          none: () => isNoneCalled = true,
          orElse: () => fail('Should not call orElse'),
        );

        expect(isNoneCalled, isTrue);
      });

      test(
        'should execute isLoading callback when state is ResultOrLoading',
        () {
          const result = ResultOr<String>.loading();
          bool isLoadingCalled = false;

          result.maybeWhen(
            loading: () => isLoadingCalled = true,
            orElse: () => fail('Should not call orElse'),
          );

          expect(isLoadingCalled, isTrue);
        },
      );

      test(
        'should execute isFailure callback when state is ResultOrFailure',
        () {
          const result = ResultOr<String>.failure(tFailure);
          String? capturedFailure;

          result.maybeWhen(
            failure: (failure) => capturedFailure = failure,
            orElse: () => fail('Should not call orElse'),
          );

          expect(capturedFailure, equals(tFailure));
        },
      );

      test(
        'should execute isSuccess callback when state is ResultOrSuccess',
        () {
          const result = ResultOr<String>.success();
          bool isSuccessCalled = false;

          result.maybeWhen(
            success: () => isSuccessCalled = true,
            orElse: () => fail('Should not call orElse'),
          );

          expect(isSuccessCalled, isTrue);
        },
      );

      test('should execute orElse if specific callback is null/omitted', () {
        const result = ResultOr<String>.loading();
        bool orElseCalled = false;

        result.maybeWhen(
          success: () => fail('Should not call isSuccess'),
          orElse: () => orElseCalled = true,
        );

        expect(orElseCalled, isTrue);
      });
    });

    group('maybeMap', () {
      test(
        'should return mapped result if callback is provided for current state',
        () {
          const result = ResultOr<String>.failure(tFailure);

          final mapped = result.maybeMap<String>(
            failure: (failure) => 'mapped_${failure.failure}',
            orElse: () => 'orElse_mapped',
          );

          expect(mapped, equals('mapped_$tFailure'));
        },
      );

      test('should return orElse result if callback is null/omitted for current state', () {
        const result = ResultOr<String>.none();

        final mapped = result.maybeMap<String>(
          success: (_) => 'mapped_success',
          orElse: () => 'orElse_mapped',
        );

        expect(mapped, equals('orElse_mapped'));
      });
    });
  });
}
