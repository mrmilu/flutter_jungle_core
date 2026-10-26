/// Represents validation failures for an IBAN (International Bank Account Number).
///
/// Subclasses define specific failure cases:
/// - [IbanFailureEmpty]: The IBAN field is empty or blank.
/// - [IbanFailureInvalid]: Generic invalid IBAN failure.
/// - [IbanFailureTooLong]: The IBAN exceeds the maximum allowed character length.
/// - [IbanFailureTooShort]: The IBAN is shorter than the minimum required character length.
/// - [IbanFailureInvalidFormat]: The IBAN structure or character set is invalid.
/// - [IbanFailureInvalidChecksum]: The IBAN fails the mod-97 check digit validation.
sealed class IbanFailure {
  /// The error code identifying the type of failure.
  final String code;

  const IbanFailure._(this.code);

  /// Creates an [IbanFailureEmpty] instance.
  const factory IbanFailure.empty({String code}) = IbanFailureEmpty;

  /// Creates an [IbanFailureInvalid] instance.
  const factory IbanFailure.invalid({String code}) = IbanFailureInvalid;

  /// Creates an [IbanFailureTooLong] instance with an optional target [length].
  const factory IbanFailure.tooLong({String code, int length}) =
      IbanFailureTooLong;

  /// Creates an [IbanFailureTooShort] instance with an optional target [length].
  const factory IbanFailure.tooShort({String code, int length}) =
      IbanFailureTooShort;

  /// Creates an [IbanFailureInvalidFormat] instance.
  const factory IbanFailure.invalidFormat({String code}) =
      IbanFailureInvalidFormat;

  /// Creates an [IbanFailureInvalidChecksum] instance.
  const factory IbanFailure.invalidChecksum({String code}) =
      IbanFailureInvalidChecksum;

  /// Returns the target length associated with length-related failures,
  /// or `0` for other cases.
  int get maxLength {
    return switch (this) {
      IbanFailureEmpty() => 0,
      IbanFailureInvalid() => 0,
      IbanFailureTooLong(:final length) => length,
      IbanFailureTooShort(:final length) => length,
      IbanFailureInvalidFormat() => 0,
      IbanFailureInvalidChecksum() => 0,
    };
  }
}

/// Represents a failure when the IBAN is empty.
final class IbanFailureEmpty extends IbanFailure {
  /// Creates an [IbanFailureEmpty] instance with an optional custom error [code].
  const IbanFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is IbanFailureEmpty && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'IbanFailure.empty(code: \$code)';
}

/// Represents a generic invalid IBAN failure.
final class IbanFailureInvalid extends IbanFailure {
  /// Creates an [IbanFailureInvalid] instance with an optional custom error [code].
  const IbanFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureInvalid && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'IbanFailure.invalid(code: \$code)';
}

/// Represents a failure when the IBAN exceeds the allowed length.
final class IbanFailureTooLong extends IbanFailure {
  /// The target or maximum expected character length for the IBAN.
  final int length;

  /// Creates an [IbanFailureTooLong] instance with an optional [code] and target [length].
  const IbanFailureTooLong({String code = 'tooLong', this.length = 24})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureTooLong &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'IbanFailure.tooLong(code: $code, length:$length)';
}

/// Represents a failure when the IBAN is shorter than required.
final class IbanFailureTooShort extends IbanFailure {
  /// The target or minimum expected character length for the IBAN.
  final int length;

  /// Creates an [IbanFailureTooShort] instance with an optional [code] and target [length].
  const IbanFailureTooShort({String code = 'tooShort', this.length = 24})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureTooShort &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'IbanFailure.tooShort(code: $code, length:$length)';
}

/// Represents a failure when the IBAN does not match the expected structural format.
final class IbanFailureInvalidFormat extends IbanFailure {
  /// Creates an [IbanFailureInvalidFormat] instance with an optional custom error [code].
  const IbanFailureInvalidFormat({String code = 'invalidFormat'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureInvalidFormat && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'IbanFailure.invalidFormat(code: \$code)';
}

/// Represents a failure when the IBAN check digits fail the mod-97 validation.
final class IbanFailureInvalidChecksum extends IbanFailure {
  /// Creates an [IbanFailureInvalidChecksum] instance with an optional custom error [code].
  const IbanFailureInvalidChecksum({String code = 'invalidChecksum'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureInvalidChecksum && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'IbanFailure.invalidChecksum(code: \$code)';
}
