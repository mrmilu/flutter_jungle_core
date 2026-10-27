import 'package:dio/dio.dart';
import 'package:flutter_jungle_core/src/failures/general_base_failure.dart';
import 'package:flutter_jungle_core/src/helpers/handle_request.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String fromString(String code, String? message) => 'code:$code:$message';
  String general(GeneralBaseFailure failure) => 'general:${failure.code}';

  DioException dioError({String? code, DioExceptionType? type}) {
    final options = RequestOptions(path: '/test');
    return DioException(
      requestOptions: options,
      type: type ?? DioExceptionType.badResponse,
      response: code == null
          ? null
          : Response<Map<String, dynamic>>(
              requestOptions: options,
              statusCode: 400,
              data: {
                'detail': {'code': code, 'message': 'api message'},
              },
            ),
    );
  }

  group('handleRequest', () {
    test('returns success with the request result', () async {
      final result = await handleRequest<String, int>(
        request: () async => 42,
        fromString: fromString,
        general: general,
      );

      expect(result.isSuccess, isTrue);
      expect(result.value, 42);
    });

    test(
      'returns mock data when useMockData is true and mockData exists',
      () async {
        var called = false;

        final result = await handleRequest<String, int>(
          request: () async {
            called = true;
            return 1;
          },
          fromString: fromString,
          general: general,
          mockData: 99,
          useMockData: true,
        );

        expect(called, isFalse);
        expect(result.value, 99);
      },
    );

    test(
      'executes the request when useMockData is true without mockData',
      () async {
        final result = await handleRequest<String, int>(
          request: () async => 7,
          fromString: fromString,
          general: general,
          useMockData: true,
        );

        expect(result.value, 7);
      },
    );

    test('maps a DioException with an API code using fromString', () async {
      final result = await handleRequest<String, int>(
        request: () async => throw dioError(code: 'custom'),
        fromString: fromString,
        general: general,
      );

      expect(result.isFailure, isTrue);
      expect(result.failure, 'code:custom:api message');
    });

    test('maps a DioException without API code using general', () async {
      final result = await handleRequest<String, int>(
        request: () async =>
            throw dioError(type: DioExceptionType.connectionTimeout),
        fromString: fromString,
        general: general,
      );

      expect(result.failure, 'general:timeoutError');
    });

    test('maps other exceptions to invalidResponseFormat', () async {
      final result = await handleRequest<String, int>(
        request: () async => throw Exception('boom'),
        fromString: fromString,
        general: general,
      );

      expect(result.failure, 'general:invalidResponseFormat');
    });
  });

  group('handleRequestResultOr', () {
    test('returns success when the request completes', () async {
      var called = false;

      final result = await handleRequestResultOr<String>(
        request: () async => called = true,
        fromString: fromString,
        general: general,
      );

      expect(called, isTrue);
      expect(result.isSuccess, isTrue);
    });

    test(
      'skips the request and returns success when useMockData is true',
      () async {
        var called = false;

        final result = await handleRequestResultOr<String>(
          request: () async => called = true,
          fromString: fromString,
          general: general,
          useMockData: true,
        );

        expect(called, isFalse);
        expect(result.isSuccess, isTrue);
      },
    );

    test('maps a DioException with an API code using fromString', () async {
      final result = await handleRequestResultOr<String>(
        request: () async => throw dioError(code: 'custom'),
        fromString: fromString,
        general: general,
      );

      expect(result.isFailure, isTrue);
      expect(result.failure, 'code:custom:api message');
    });

    test('maps a DioException without API code using general', () async {
      final result = await handleRequestResultOr<String>(
        request: () async =>
            throw dioError(type: DioExceptionType.connectionError),
        fromString: fromString,
        general: general,
      );

      expect(result.failure, 'general:networkError');
    });

    test('maps other exceptions to invalidResponseFormat', () async {
      final result = await handleRequestResultOr<String>(
        request: () async => throw Exception('boom'),
        fromString: fromString,
        general: general,
      );

      expect(result.failure, 'general:invalidResponseFormat');
    });
  });
}
