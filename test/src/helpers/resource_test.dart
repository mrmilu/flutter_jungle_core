import 'package:flutter_jungle_core/src/helpers/resource.dart';
import 'package:flutter_test/flutter_test.dart';

// Import the file where the Resource class is declared
// import 'package:your_project/domain/resource.dart';

void main() {
  group('Resource', () {
    const tData = 'Sample Data';
    const tFailure = 'Sample Failure';

    group('Constructors & Getters', () {
      test('Resource.none should initialize ResourceNone correctly', () {
        const resource = Resource<String, String>.none();

        expect(resource, isA<ResourceNone<String, String>>());
        expect(resource.isNone, isTrue);
        expect(resource.isLoading, isFalse);
        expect(resource.isSuccess, isFalse);
        expect(resource.isFailure, isFalse);
        expect(resource.value, isNull);
        expect(resource.failure, isNull);
      });

      test('Resource.loading should initialize ResourceLoading correctly', () {
        const resource = Resource<String, String>.loading();

        expect(resource, isA<ResourceLoading<String, String>>());
        expect(resource.isNone, isFalse);
        expect(resource.isLoading, isTrue);
        expect(resource.isSuccess, isFalse);
        expect(resource.isFailure, isFalse);
        expect(resource.value, isNull);
        expect(resource.failure, isNull);
      });

      test('Resource.success should initialize ResourceSuccess correctly', () {
        const resource = Resource<String, String>.success(tData);

        expect(resource, isA<ResourceSuccess<String, String>>());
        expect(resource.isNone, isFalse);
        expect(resource.isLoading, isFalse);
        expect(resource.isSuccess, isTrue);
        expect(resource.isFailure, isFalse);
        expect(resource.value, equals(tData));
        expect(resource.failure, isNull);
      });

      test('Resource.failure should initialize ResourceFailure correctly', () {
        const resource = Resource<String, String>.failure(tFailure);

        expect(resource, isA<ResourceFailure<String, String>>());
        expect(resource.isNone, isFalse);
        expect(resource.isLoading, isFalse);
        expect(resource.isSuccess, isFalse);
        expect(resource.isFailure, isTrue);
        expect(resource.value, isNull);
        expect(resource.failure, equals(tFailure));
      });
    });

    group('whenIsSuccess', () {
      test(
        'should execute callback and return value when Resource.success',
        () {
          const resource = Resource<String, String>.success(tData);
          String? resultData;

          final returnValue = resource.whenIsSuccess((data) {
            resultData = data;
          });

          expect(resultData, equals(tData));
          expect(returnValue, equals(tData));
        },
      );

      test(
        'should NOT execute callback and return null when state is not success',
        () {
          const resource = Resource<String, String>.loading();
          bool called = false;

          final returnValue = resource.whenIsSuccess((_) {
            called = true;
          });

          expect(called, isFalse);
          expect(returnValue, isNull);
        },
      );
    });

    group('whenIsFailure', () {
      test(
        'should execute callback and return failure when Resource.failure',
        () {
          const resource = Resource<String, String>.failure(tFailure);
          String? resultFailure;

          final returnValue = resource.whenIsFailure((failure) {
            resultFailure = failure;
          });

          expect(resultFailure, equals(tFailure));
          expect(returnValue, equals(tFailure));
        },
      );

      test(
        'should NOT execute callback and return null when state is not failure',
        () {
          const resource = Resource<String, String>.success(tData);
          bool called = false;

          final returnValue = resource.whenIsFailure((_) {
            called = true;
          });

          expect(called, isFalse);
          expect(returnValue, isNull);
        },
      );
    });

    group('when', () {
      test('should call isNone when state is ResourceNone', () {
        const resource = Resource<String, String>.none();
        bool isNoneCalled = false;

        resource.when(
          none: () => isNoneCalled = true,
          loading: () => fail('Should not call isLoading'),
          success: (_) => fail('Should not call isSuccess'),
          failure: (_) => fail('Should not call isFailure'),
        );

        expect(isNoneCalled, isTrue);
      });

      test('should call isLoading when state is ResourceLoading', () {
        const resource = Resource<String, String>.loading();
        bool isLoadingCalled = false;

        resource.when(
          none: () => fail('Should not call isNone'),
          loading: () => isLoadingCalled = true,
          success: (_) => fail('Should not call isSuccess'),
          failure: (_) => fail('Should not call isFailure'),
        );

        expect(isLoadingCalled, isTrue);
      });

      test(
        'should call isSuccess with payload when state is ResourceSuccess',
        () {
          const resource = Resource<String, String>.success(tData);
          String? resultData;

          resource.when(
            none: () => fail('Should not call isNone'),
            loading: () => fail('Should not call isLoading'),
            success: (data) => resultData = data,
            failure: (_) => fail('Should not call isFailure'),
          );

          expect(resultData, equals(tData));
        },
      );

      test(
        'should call isFailure with payload when state is ResourceFailure',
        () {
          const resource = Resource<String, String>.failure(tFailure);
          String? resultFailure;

          resource.when(
            none: () => fail('Should not call isNone'),
            loading: () => fail('Should not call isLoading'),
            success: (_) => fail('Should not call isSuccess'),
            failure: (failure) => resultFailure = failure,
          );

          expect(resultFailure, equals(tFailure));
        },
      );
    });

    group('map', () {
      test('should map ResourceNone correctly', () {
        const resource = Resource<String, String>.none();

        final result = resource.when<String>(
          none: () => 'none_mapped',
          loading: () => 'loading_mapped',
          success: (data) => 'success_$data',
          failure: (failure) => 'failure_$failure',
        );

        expect(result, equals('none_mapped'));
      });

      test('should map ResourceLoading correctly', () {
        const resource = Resource<String, String>.loading();

        final result = resource.when<String>(
          none: () => 'none_mapped',
          loading: () => 'loading_mapped',
          success: (data) => 'success_$data',
          failure: (failure) => 'failure_$failure',
        );

        expect(result, equals('loading_mapped'));
      });

      test('should map ResourceSuccess correctly', () {
        const resource = Resource<String, String>.success(tData);

        final result = resource.when<String>(
          none: () => 'none_mapped',
          loading: () => 'loading_mapped',
          success: (data) => 'success_$data',
          failure: (failure) => 'failure_$failure',
        );

        expect(result, equals('success_$tData'));
      });

      test('should map ResourceFailure correctly', () {
        const resource = Resource<String, String>.failure(tFailure);

        final result = resource.when<String>(
          none: () => 'none_mapped',
          loading: () => 'loading_mapped',
          success: (data) => 'success_$data',
          failure: (failure) => 'failure_$failure',
        );

        expect(result, equals('failure_$tFailure'));
      });
    });

    group('maybeWhen', () {
      test('should execute isNone callback when state is ResourceNone', () {
        const resource = Resource<String, String>.none();
        bool isNoneCalled = false;

        resource.maybeWhen(
          none: () => isNoneCalled = true,
          orElse: () => fail('Should not call orElse'),
        );

        expect(isNoneCalled, isTrue);
      });

      test(
        'should execute isLoading callback when state is ResourceLoading',
        () {
          const resource = Resource<String, String>.loading();
          bool isLoadingCalled = false;

          resource.maybeWhen(
            loading: () => isLoadingCalled = true,
            orElse: () => fail('Should not call orElse'),
          );

          expect(isLoadingCalled, isTrue);
        },
      );

      test(
        'should execute isSuccess callback when state is ResourceSuccess',
        () {
          const resource = Resource<String, String>.success(tData);
          String? resultData;

          resource.maybeWhen(
            success: (data) => resultData = data,
            orElse: () => fail('Should not call orElse'),
          );

          expect(resultData, equals(tData));
        },
      );

      test(
        'should execute isFailure callback when state is ResourceFailure',
        () {
          const resource = Resource<String, String>.failure(tFailure);
          String? resultFailure;

          resource.maybeWhen(
            failure: (failure) => resultFailure = failure,
            orElse: () => fail('Should not call orElse'),
          );

          expect(resultFailure, equals(tFailure));
        },
      );

      test('should execute orElse if specific callback is null/omitted', () {
        const resource = Resource<String, String>.loading();
        bool orElseCalled = false;

        resource.maybeWhen(
          success: (_) => fail('Should not call isSuccess'),
          orElse: () => orElseCalled = true,
        );

        expect(orElseCalled, isTrue);
      });
    });

    group('maybeMap', () {
      test(
        'should return mapped result if callback is provided for current state',
        () {
          const resource = Resource<String, String>.failure(tFailure);

          final result = resource.maybeMap<String>(
            failure: (e) => 'mapped_${e.failure}',
            orElse: () => 'orElse_mapped',
          );

          expect(result, equals('mapped_$tFailure'));
        },
      );

      test('should return orElse result if callback is null/omitted for current state', () {
        const resource = Resource<String, String>.none();

        final result = resource.maybeMap<String>(
          success: (data) => 'mapped_$data',
          orElse: () => 'orElse_mapped',
        );

        expect(result, equals('orElse_mapped'));
      });
    });
  });
}
