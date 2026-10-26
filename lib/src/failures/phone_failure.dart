/// Represents validation failures for a phone number field.
///
/// Subclasses define specific failure cases:
/// - [PhoneFailureEmpty]: The phone number is empty or blank.
/// - [PhoneFailureInvalid]: The phone number format or character set is invalid.
/// - [PhoneFailureTooLong]: The phone number exceeds the maximum allowed digit length.
sealed class PhoneFailure {
  /// The error code identifying the type of failure.
  final String code;

  const PhoneFailure._(this.code);

  /// Creates a [PhoneFailureEmpty] instance.
  const factory PhoneFailure.empty({String code}) = PhoneFailureEmpty;

  /// Creates a [PhoneFailureInvalid] instance.
  const factory PhoneFailure.invalid({String code}) = PhoneFailureInvalid;

  /// Creates a [PhoneFailureTooLong] instance with an optional target [length].
  const factory PhoneFailure.tooLong({String code, int length}) =
      PhoneFailureTooLong;

  /// Returns the maximum expected digit length associated with [PhoneFailureTooLong],
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      PhoneFailureEmpty() => 0,
      PhoneFailureInvalid() => 0,
      PhoneFailureTooLong(:final length) => length,
    };
  }
}

/// Represents a failure when the phone number is empty.
final class PhoneFailureEmpty extends PhoneFailure {
  /// Creates a [PhoneFailureEmpty] instance with an optional custom error [code].
  const PhoneFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneFailureEmpty && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PhoneFailure.empty(code: \$code)';
}

/// Represents a failure when the phone number format is invalid.
final class PhoneFailureInvalid extends PhoneFailure {
  /// Creates a [PhoneFailureInvalid] instance with an optional custom error [code].
  const PhoneFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneFailureInvalid && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PhoneFailure.invalid(code: \$code)';
}

/// Represents a failure when the phone number exceeds the digit limit.
final class PhoneFailureTooLong extends PhoneFailure {
  /// The target or maximum expected digit length for the phone number.
  final int length;

  /// Creates a [PhoneFailureTooLong] instance with an optional [code] and target [length].
  const PhoneFailureTooLong({String code = 'tooLong', this.length = 11})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneFailureTooLong &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'PhoneFailure.tooLong(code: $code, length:$length)';
}
