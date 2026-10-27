import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_base_failure.freezed.dart';

/// A general failure type for network requests and API responses.
///
/// Use the named constructors to create a specific failure, or [fromString] to
/// map an error code to a failure.
@freezed
sealed class GeneralBaseFailure with _$GeneralBaseFailure {
  /// Private constructor required to declare custom methods, getters or static constructors.
  const GeneralBaseFailure._();

  /// Creates a failure for an unauthenticated or unauthorized request.
  const factory GeneralBaseFailure.unauthorized({
    @Default('unauthorized') String code,
    @Default('No estás autorizado. Por favor, inicia sesión.') String message,
  }) = GeneralBaseFailureUnauthorized;

  /// Creates a failure caused by an internal server error.
  const factory GeneralBaseFailure.internalError({
    @Default('internalError') String code,
    @Default('Error interno del servidor. Intenta más tarde.') String message,
  }) = GeneralBaseFailureInternalError;

  /// Creates a failure caused by a network connectivity problem.
  const factory GeneralBaseFailure.networkError({
    @Default('networkError') String code,
    @Default('Sin conexión a internet. Verifica tu red.') String message,
  }) = GeneralBaseFailureNetworkError;

  /// Creates a failure caused by a request timing out.
  const factory GeneralBaseFailure.timeoutError({
    @Default('timeoutError') String code,
    @Default('La solicitud tardó demasiado. Intenta de nuevo.') String message,
  }) = GeneralBaseFailureTimeoutError;

  /// Creates a failure caused by an invalid or unexpected response format.
  const factory GeneralBaseFailure.invalidResponseFormat({
    @Default('invalidResponseFormat') String code,
    @Default('Formato de respuesta inválido. Contacta soporte.') String message,
  }) = GeneralBaseFailureInvalidResponseFormat;

  /// Creates a failure for an unrecognized or unexpected error.
  const factory GeneralBaseFailure.unexpectedError({
    @Default('unexpectedError') String code,
    @Default('Error inesperado. Intenta más tarde.') String message,
  }) = GeneralBaseFailureUnexpectedError;

  /// Creates a failure from a known error [code].
  ///
  /// Uses a default message when [message] is omitted. Unknown codes produce
  /// a [GeneralBaseFailureUnexpectedError].
  static GeneralBaseFailure fromString(String code, [String? message]) {
    return switch (code) {
      'unauthorized' => GeneralBaseFailure.unauthorized(
        code: code,
        message: message ?? 'No estás autorizado. Por favor, inicia sesión.',
      ),
      'internalError' => GeneralBaseFailure.internalError(
        code: code,
        message: message ?? 'Error interno del servidor. Intenta más tarde.',
      ),
      'networkError' => GeneralBaseFailure.networkError(
        code: code,
        message: message ?? 'Sin conexión a internet. Verifica tu red.',
      ),
      'timeoutError' => GeneralBaseFailure.timeoutError(
        code: code,
        message: message ?? 'La solicitud tardó demasiado. Intenta de nuevo.',
      ),
      'invalidResponseFormat' => GeneralBaseFailure.invalidResponseFormat(
        code: code,
        message: message ?? 'Formato de respuesta inválido. Contacta soporte.',
      ),
      _ => GeneralBaseFailure.unexpectedError(
        code: code,
        message: message ?? 'Error inesperado. Intenta más tarde.',
      ),
    };
  }

  /// Returns a failure of the matching concrete type with the same code and
  /// message as this instance.
  GeneralBaseFailure get typeError => switch (this) {
    GeneralBaseFailureUnauthorized() => GeneralBaseFailure.unauthorized(
      code: code,
      message: message,
    ),
    GeneralBaseFailureInternalError() => GeneralBaseFailure.internalError(
      code: code,
      message: message,
    ),
    GeneralBaseFailureNetworkError() => GeneralBaseFailure.networkError(
      code: code,
      message: message,
    ),
    GeneralBaseFailureTimeoutError() => GeneralBaseFailure.timeoutError(
      code: code,
      message: message,
    ),
    GeneralBaseFailureInvalidResponseFormat() =>
      GeneralBaseFailure.invalidResponseFormat(code: code, message: message),
    GeneralBaseFailureUnexpectedError() => GeneralBaseFailure.unexpectedError(
      code: code,
      message: message,
    ),
  };
}
