import 'package:dio/dio.dart';

import '../failures/general_base_failure.dart';

/// Helpers for extracting API error details and mapping Dio errors to failures.
extension DioExceptionExtension on DioException {
  /// Returns the API error code from `response.data.detail.code`, if available.
  String? get apiErrorCode {
    try {
      if (response?.data == null || response?.data is! Map<String, dynamic>) {
        return null;
      }
      if (response?.data['detail'] == null ||
          response?.data['detail'] is! Map<String, dynamic>) {
        return null;
      }
      return response?.data['detail']['code'] as String?;
    } catch (e) {
      return null;
    }
  }

  /// Returns the API error message from `response.data.detail.message`, if available.
  String? get apiErrorMessage {
    try {
      if (response?.data == null || response?.data is! Map<String, dynamic>) {
        return null;
      }
      if (response?.data['detail'] == null ||
          response?.data['detail'] is! Map<String, dynamic>) {
        return response?.data['detail'] as String?;
      }
      return response?.data['detail']['message'] as String?;
    } catch (e) {
      return null;
    }
  }

  /// Converts this exception into an application-specific failure.
  ///
  /// If the response contains an API error code, [fromString] creates the
  /// corresponding failure. Otherwise, the Dio error is mapped to a
  /// [GeneralBaseFailure] and passed to [fromGeneralFailure].
  T toFailure<T>(
    T Function(String errorCode, String? message) fromString,
    T Function(GeneralBaseFailure gF) fromGeneralFailure,
  ) {
    // Prefer a specific error code supplied by the API.
    if (apiErrorCode != null) {
      return fromString(apiErrorCode!, apiErrorMessage);
    }

    // Otherwise, map the Dio exception to a general failure.
    final gF = _mapDioExceptionToGeneralFailure();
    return fromGeneralFailure(gF);
  }

  /// Maps this exception type to a general application failure.
  GeneralBaseFailure _mapDioExceptionToGeneralFailure() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.transformTimeout:
        return GeneralBaseFailure.timeoutError(
          message:
              apiErrorMessage ??
              'La solicitud tardó demasiado. Intenta de nuevo.',
        );

      case DioExceptionType.connectionError:
        return GeneralBaseFailure.networkError(
          message: apiErrorMessage ?? 'Ha fallado la conexión',
        );

      case DioExceptionType.badResponse:
        return _mapHttpStatusToFailure();

      case DioExceptionType.cancel:
        return GeneralBaseFailure.networkError(
          message: apiErrorMessage ?? 'Solicitud cancelada.',
        );

      case DioExceptionType.badCertificate:
        return GeneralBaseFailure.networkError(
          message: apiErrorMessage ?? 'Error de certificado SSL.',
        );

      case DioExceptionType.unknown:
        return GeneralBaseFailure.unexpectedError(
          message: apiErrorMessage ?? 'Error inesperado. Intenta más tarde.',
        );
    }
  }

  /// Maps the HTTP status code to a general application failure.
  GeneralBaseFailure _mapHttpStatusToFailure() {
    final statusCode = response?.statusCode;

    switch (statusCode) {
      case 401:
        return GeneralBaseFailure.unauthorized(
          message:
              apiErrorMessage ??
              'No estás autorizado. Por favor, inicia sesión.',
        );

      case 403:
        return GeneralBaseFailure.unauthorized(
          message:
              apiErrorMessage ??
              'No tienes permisos para realizar esta acción.',
        );

      case 404:
        return GeneralBaseFailure.internalError(
          message: apiErrorMessage ?? 'Recurso no encontrado.',
        );

      case 422:
        return GeneralBaseFailure.invalidResponseFormat(
          message: apiErrorMessage ?? 'Datos de entrada inválidos.',
        );

      case 429:
        return GeneralBaseFailure.networkError(
          message:
              apiErrorMessage ?? 'Demasiadas solicitudes. Intenta más tarde.',
        );

      case 500:
      case 502:
      case 503:
      case 504:
        return GeneralBaseFailure.internalError(
          message:
              apiErrorMessage ??
              'Error interno del servidor. Intenta más tarde.',
        );

      default:
        // Handle malformed response bodies and unrecognized status codes.
        if (response?.data == null || response?.data is! Map<String, dynamic>) {
          return GeneralBaseFailure.invalidResponseFormat(
            message: apiErrorMessage ?? 'Formato de respuesta inválido.',
          );
        }

        return GeneralBaseFailure.unexpectedError(
          message: apiErrorMessage ?? 'Error inesperado. Intenta más tarde.',
        );
    }
  }
}
