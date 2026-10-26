/// Represents validation failures for a NIF (Número de Identificación Fiscal / DNI).
///
/// Subclasses define specific failure cases:
/// - [NifFailureEmpty]: The NIF field is empty or blank.
/// - [NifFailureInvalid]: The NIF format or check letter is invalid.
/// - [NifFailureTooLong]: The NIF exceeds the maximum allowed length.
/// - [NifFailureTooShort]: The NIF is shorter than the minimum required length.
sealed class NifFailure {
  /// The error code identifying the type of failure.
  final String code;

  const NifFailure._(this.code);

  /// Creates a [NifFailureEmpty] instance.
  const factory NifFailure.empty({String code}) = NifFailureEmpty;

  /// Creates a [NifFailureInvalid] instance.
  const factory NifFailure.invalid({String code}) = NifFailureInvalid;

  /// Creates a [NifFailureTooLong] instance with an optional target [length].
  const factory NifFailure.tooLong({String code, int length}) =
      NifFailureTooLong;

  /// Creates a [NifFailureTooShort] instance with an optional target [length].
  const factory NifFailure.tooShort({String code, int length}) =
      NifFailureTooShort;

  /// Returns the target length associated with length-related failures,
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      NifFailureEmpty() => 0,
      NifFailureInvalid() => 0,
      NifFailureTooLong(:final length) => length,
      NifFailureTooShort(:final length) => length,
    };
  }
}

/// Represents a failure when the NIF is empty.
final class NifFailureEmpty extends NifFailure {
  /// Creates a [NifFailureEmpty] instance with an optional custom error [code].
  const NifFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is NifFailureEmpty && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'NifFailure.empty(code: \$code)';
}

/// Represents a failure when the NIF format or check letter is invalid.
final class NifFailureInvalid extends NifFailure {
  /// Creates a [NifFailureInvalid] instance with an optional custom error [code].
  const NifFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NifFailureInvalid && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'NifFailure.invalid(code: \$code)';
}

/// Represents a failure when the NIF exceeds the allowed character length.
final class NifFailureTooLong extends NifFailure {
  /// The target or maximum expected character length for the NIF.
  final int length;

  /// Creates a [NifFailureTooLong] instance with an optional [code] and target [length].
  const NifFailureTooLong({String code = 'tooLong', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NifFailureTooLong &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'NifFailure.tooLong(code: $code, length:$length)';
}

/// Represents a failure when the NIF is shorter than required.
final class NifFailureTooShort extends NifFailure {
  /// The target or minimum expected character length for the NIF.
  final int length;

  /// Creates a [NifFailureTooShort] instance with an optional [code] and target [length].
  const NifFailureTooShort({String code = 'tooShort', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NifFailureTooShort &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'NifFailure.tooShort(code: $code, length:$length)';
}
