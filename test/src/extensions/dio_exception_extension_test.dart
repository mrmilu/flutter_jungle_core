import 'package:dio/dio.dart';
import 'package:flutter_jungle_core/src/extensions/dio_exception_extension.dart';
import 'package:flutter_jungle_core/src/failures/general_base_failure.dart';
import 'package:flutter_test/flutter_test.dart';

DioException buildException({
  DioExceptionType type = DioExceptionType.badResponse,
  int? statusCode,
  Object? data,
  bool withResponse = true,
}) {
  final options = RequestOptions(path: '/test');
  return DioException(
    requestOptions: options,
    type: type,
    response: withResponse
        ? Response<dynamic>(
            requestOptions: options,
            statusCode: statusCode,
            data: data,
          )
        : null,
  );
}

GeneralBaseFailure toGeneral(DioException exception) => exception.toFailure(
  (code, message) => GeneralBaseFailure.fromString(code, message),
  (failure) => failure,
);

void main() {
  group('DioExceptionExtension', () {
    group('apiErrorCode', () {
      test('returns null when there is no response', () {
        expect(buildException(withResponse: false).apiErrorCode, isNull);
      });

      test('returns null when data is null', () {
        expect(buildException().apiErrorCode, isNull);
      });

      test('returns null when data is not a map', () {
        expect(buildException(data: 'text').apiErrorCode, isNull);
      });

      test('returns null when detail is missing', () {
        expect(buildException(data: <String, dynamic>{}).apiErrorCode, isNull);
      });

      test('returns null when detail is not a map', () {
        expect(
          buildException(data: <String, dynamic>{'detail': 'oops'})
              .apiErrorCode,
          isNull,
        );
      });

      test('returns null when code is not a string', () {
        expect(
          buildException(
            data: <String, dynamic>{
              'detail': <String, dynamic>{'code': 123},
            },
          ).apiErrorCode,
          isNull,
        );
      });

      test('returns the code from detail', () {
        expect(
          buildException(
            data: <String, dynamic>{
              'detail': <String, dynamic>{'code': 'my_code'},
            },
          ).apiErrorCode,
          'my_code',
        );
      });
    });

    group('apiErrorMessage', () {
      test('returns null when there is no response', () {
        expect(buildException(withResponse: false).apiErrorMessage, isNull);
      });

      test('returns null when data is null', () {
        expect(buildException().apiErrorMessage, isNull);
      });

      test('returns null when data is not a map', () {
        expect(buildException(data: 'text').apiErrorMessage, isNull);
      });

      test('returns null when detail is missing', () {
        expect(
          buildException(data: <String, dynamic>{}).apiErrorMessage,
          isNull,
        );
      });

      test('returns detail when it is a string', () {
        expect(
          buildException(data: <String, dynamic>{'detail': 'plain detail'})
              .apiErrorMessage,
          'plain detail',
        );
      });

      test('returns null when detail is neither a map nor a string', () {
        expect(
          buildException(data: <String, dynamic>{'detail': 42}).apiErrorMessage,
          isNull,
        );
      });

      test('returns null when message is not a string', () {
        expect(
          buildException(
            data: <String, dynamic>{
              'detail': <String, dynamic>{'message': 1},
            },
          ).apiErrorMessage,
          isNull,
        );
      });

      test('returns the message from detail', () {
        expect(
          buildException(
            data: <String, dynamic>{
              'detail': <String, dynamic>{'message': 'my message'},
            },
          ).apiErrorMessage,
          'my message',
        );
      });
    });

    group('toFailure', () {
      test('uses fromString when the API provides a code', () {
        final exception = buildException(
          data: <String, dynamic>{
            'detail': <String, dynamic>{'code': 'custom', 'message': 'msg'},
          },
        );

        final result = exception.toFailure<String>(
          (code, message) => '$code|$message',
          (_) => fail('Should not call general'),
        );

        expect(result, 'custom|msg');
      });

      group('by exception type', () {
        final cases = <(DioExceptionType, Type, String)>[
          (
            DioExceptionType.connectionTimeout,
            GeneralBaseFailureTimeoutError,
            'La solicitud tardó demasiado. Intenta de nuevo.',
          ),
          (
            DioExceptionType.sendTimeout,
            GeneralBaseFailureTimeoutError,
            'La solicitud tardó demasiado. Intenta de nuevo.',
          ),
          (
            DioExceptionType.receiveTimeout,
            GeneralBaseFailureTimeoutError,
            'La solicitud tardó demasiado. Intenta de nuevo.',
          ),
          (
            DioExceptionType.connectionError,
            GeneralBaseFailureNetworkError,
            'Ha fallado la conexión',
          ),
          (
            DioExceptionType.cancel,
            GeneralBaseFailureNetworkError,
            'Solicitud cancelada.',
          ),
          (
            DioExceptionType.badCertificate,
            GeneralBaseFailureNetworkError,
            'Error de certificado SSL.',
          ),
          (
            DioExceptionType.unknown,
            GeneralBaseFailureUnexpectedError,
            'Error inesperado. Intenta más tarde.',
          ),
        ];

        for (final (type, expectedType, defaultMessage) in cases) {
          test('maps $type to $expectedType with default message', () {
            final failure = toGeneral(
              buildException(type: type, withResponse: false),
            );

            expect(failure.runtimeType, expectedType);
            expect(failure.message, defaultMessage);
          });

          test('maps $type using the API message when available', () {
            final failure = toGeneral(
              buildException(
                type: type,
                data: <String, dynamic>{'detail': 'api message'},
              ),
            );

            expect(failure.runtimeType, expectedType);
            expect(failure.message, 'api message');
          });
        }
      });

      group('by HTTP status', () {
        final cases = <(int, Type, String)>[
          (
            401,
            GeneralBaseFailureUnauthorized,
            'No estás autorizado. Por favor, inicia sesión.',
          ),
          (
            403,
            GeneralBaseFailureUnauthorized,
            'No tienes permisos para realizar esta acción.',
          ),
          (404, GeneralBaseFailureInternalError, 'Recurso no encontrado.'),
          (
            422,
            GeneralBaseFailureInvalidResponseFormat,
            'Datos de entrada inválidos.',
          ),
          (
            429,
            GeneralBaseFailureNetworkError,
            'Demasiadas solicitudes. Intenta más tarde.',
          ),
          (
            500,
            GeneralBaseFailureInternalError,
            'Error interno del servidor. Intenta más tarde.',
          ),
          (
            502,
            GeneralBaseFailureInternalError,
            'Error interno del servidor. Intenta más tarde.',
          ),
          (
            503,
            GeneralBaseFailureInternalError,
            'Error interno del servidor. Intenta más tarde.',
          ),
          (
            504,
            GeneralBaseFailureInternalError,
            'Error interno del servidor. Intenta más tarde.',
          ),
        ];

        for (final (status, expectedType, defaultMessage) in cases) {
          test('maps $status to $expectedType with default message', () {
            final failure = toGeneral(buildException(statusCode: status));

            expect(failure.runtimeType, expectedType);
            expect(failure.message, defaultMessage);
          });

          test('maps $status using the API message when available', () {
            final failure = toGeneral(
              buildException(
                statusCode: status,
                data: <String, dynamic>{'detail': 'api message'},
              ),
            );

            expect(failure.runtimeType, expectedType);
            expect(failure.message, 'api message');
          });
        }

        test('maps unknown status with malformed body to invalid format', () {
          final failure = toGeneral(buildException(statusCode: 418));

          expect(failure, isA<GeneralBaseFailureInvalidResponseFormat>());
          expect(failure.message, 'Formato de respuesta inválido.');
        });

        test('maps unknown status with a non-map body to invalid format', () {
          final failure = toGeneral(
            buildException(statusCode: 418, data: 'text'),
          );

          expect(failure, isA<GeneralBaseFailureInvalidResponseFormat>());
        });

        test('maps unknown status with a map body to unexpected error', () {
          final failure = toGeneral(
            buildException(statusCode: 418, data: <String, dynamic>{}),
          );

          expect(failure, isA<GeneralBaseFailureUnexpectedError>());
          expect(failure.message, 'Error inesperado. Intenta más tarde.');
        });

        test('maps unknown status using the API message when available', () {
          final failure = toGeneral(
            buildException(
              statusCode: 418,
              data: <String, dynamic>{'detail': 'teapot'},
            ),
          );

          expect(failure, isA<GeneralBaseFailureUnexpectedError>());
          expect(failure.message, 'teapot');
        });

        test('maps a missing response to invalid format', () {
          final failure = toGeneral(buildException(withResponse: false));

          expect(failure, isA<GeneralBaseFailureInvalidResponseFormat>());
        });
      });
    });
  });
}
