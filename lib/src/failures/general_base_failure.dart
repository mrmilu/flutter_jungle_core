/// A general failure type for network requests and API responses.
///
/// Use the named constructors to create a specific failure, or [fromString] to
/// map an error code to a failure.
sealed class GeneralBaseFailure {
  /// The machine-readable identifier for this failure.
  final String code;

  /// A human-readable description of this failure.
  final String message;

  /// Creates a failure with an explicit [code] and [message].
  const GeneralBaseFailure({required this.code, required this.message});

  /// Creates a failure for an unauthenticated or unauthorized request.
  const factory GeneralBaseFailure.unauthorized({String code, String message}) =
      GeneralBaseFailureUnauthorized;

  /// Creates a failure caused by an internal server error.
  const factory GeneralBaseFailure.internalError({
    String code,
    String message,
  }) = GeneralBaseFailureInternalError;

  /// Creates a failure caused by a network connectivity problem.
  const factory GeneralBaseFailure.networkError({String code, String message}) =
      GeneralBaseFailureNetworkError;

  /// Creates a failure caused by a request timing out.
  const factory GeneralBaseFailure.timeoutError({String code, String message}) =
      GeneralBaseFailureTimeoutError;

  /// Creates a failure caused by an invalid or unexpected response format.
  const factory GeneralBaseFailure.invalidResponseFormat({
    String code,
    String message,
  }) = GeneralBaseFailureInvalidResponseFormat;

  /// Creates a failure for an unrecognized or unexpected error.
  const factory GeneralBaseFailure.unexpectedError({
    String code,
    String message,
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GeneralBaseFailure &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          message == other.message;

  @override
  int get hashCode => code.hashCode ^ message.hashCode;

  @override
  String toString() => '$runtimeType(code: $code, message: $message)';
}

/// Failure indicating that a request is unauthorized.
final class GeneralBaseFailureUnauthorized extends GeneralBaseFailure {
  const GeneralBaseFailureUnauthorized({
    super.code = 'unauthorized',
    super.message = 'No estás autorizado. Por favor, inicia sesión.',
  });
}

/// Failure indicating an internal server error.
final class GeneralBaseFailureInternalError extends GeneralBaseFailure {
  const GeneralBaseFailureInternalError({
    super.code = 'internalError',
    super.message = 'Error interno del servidor. Intenta más tarde.',
  });
}

/// Failure indicating a network connectivity problem.
final class GeneralBaseFailureNetworkError extends GeneralBaseFailure {
  const GeneralBaseFailureNetworkError({
    super.code = 'networkError',
    super.message = 'Sin conexión a internet. Verifica tu red.',
  });
}

/// Failure indicating that a request timed out.
final class GeneralBaseFailureTimeoutError extends GeneralBaseFailure {
  const GeneralBaseFailureTimeoutError({
    super.code = 'timeoutError',
    super.message = 'La solicitud tardó demasiado. Intenta de nuevo.',
  });
}

/// Failure indicating that a response has an invalid format.
final class GeneralBaseFailureInvalidResponseFormat extends GeneralBaseFailure {
  const GeneralBaseFailureInvalidResponseFormat({
    super.code = 'invalidResponseFormat',
    super.message = 'Formato de respuesta inválido. Contacta soporte.',
  });
}

/// Failure indicating an unrecognized or unexpected error.
final class GeneralBaseFailureUnexpectedError extends GeneralBaseFailure {
  const GeneralBaseFailureUnexpectedError({
    super.code = 'unexpectedError',
    super.message = 'Error inesperado. Intenta más tarde.',
  });
}
