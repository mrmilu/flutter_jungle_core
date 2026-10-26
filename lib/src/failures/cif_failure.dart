/// Represents validation failures for a CIF (Código de Identificación Fiscal).
///
/// Subclasses define specific failure cases:
/// - [CifFailureEmpty]: The CIF field is empty.
/// - [CifFailureInvalid]: The CIF format or checksum is invalid.
/// - [CifFailureTooLong]: The CIF exceeds the maximum allowed length.
/// - [CifFailureTooShort]: The CIF is shorter than the minimum required length.
sealed class CifFailure {
  /// The error code identifying the type of failure.
  final String code;

  const CifFailure._(this.code);

  /// Creates a [CifFailureEmpty] instance.
  const factory CifFailure.empty({String code}) = CifFailureEmpty;

  /// Creates a [CifFailureInvalid] instance.
  const factory CifFailure.invalid({String code}) = CifFailureInvalid;

  /// Creates a [CifFailureTooLong] instance with an optional target [length].
  const factory CifFailure.tooLong({String code, int length}) =
      CifFailureTooLong;

  /// Creates a [CifFailureTooShort] instance with an optional target [length].
  const factory CifFailure.tooShort({String code, int length}) =
      CifFailureTooShort;

  /// Returns the expected or maximum length associated with length-related failures,
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      CifFailureEmpty() => 0,
      CifFailureInvalid() => 0,
      CifFailureTooLong(:final length) => length,
      CifFailureTooShort(:final length) => length,
    };
  }
}

/// Represents a failure when the CIF is empty.
final class CifFailureEmpty extends CifFailure {
  /// Creates a [CifFailureEmpty] instance with an optional custom error [code].
  const CifFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is CifFailureEmpty && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'CifFailure.empty(code: \$code)';
}

/// Represents a failure when the CIF format or check digit is invalid.
final class CifFailureInvalid extends CifFailure {
  /// Creates a [CifFailureInvalid] instance with an optional custom error [code].
  const CifFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CifFailureInvalid && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'CifFailure.invalid(code: \$code)';
}

/// Represents a failure when the CIF exceeds the allowed length.
final class CifFailureTooLong extends CifFailure {
  /// The target or maximum expected length for the CIF.
  final int length;

  /// Creates a [CifFailureTooLong] instance with an optional [code] and target [length].
  const CifFailureTooLong({String code = 'tooLong', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CifFailureTooLong &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'CifFailure.tooLong(code: $code, length:$length)';
}

/// Represents a failure when the CIF is shorter than required.
final class CifFailureTooShort extends CifFailure {
  /// The target or minimum expected length for the CIF.
  final int length;

  /// Creates a [CifFailureTooShort] instance with an optional [code] and target [length].
  const CifFailureTooShort({String code = 'tooShort', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CifFailureTooShort &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'CifFailure.tooShort(code: $code, length:$length)';
}
