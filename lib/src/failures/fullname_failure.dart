/// Represents validation failures for a full name field.
///
/// Subclasses define specific failure cases:
/// - [FullnameFailureEmpty]: The full name field is empty or blank.
/// - [FullnameFailureInvalid]: The full name contains invalid characters or structure.
/// - [FullnameFailureTooLong]: The full name exceeds the maximum allowed character length.
sealed class FullnameFailure {
  /// The error code identifying the type of failure.
  final String code;

  const FullnameFailure._(this.code);

  /// Creates a [FullnameFailureEmpty] instance.
  const factory FullnameFailure.empty({String code}) = FullnameFailureEmpty;

  /// Creates a [FullnameFailureInvalid] instance.
  const factory FullnameFailure.invalid({String code}) = FullnameFailureInvalid;

  /// Creates a [FullnameFailureTooLong] instance with an optional target [length].
  const factory FullnameFailure.tooLong({String code, int length}) =
      FullnameFailureTooLong;

  /// Returns the maximum expected character limit associated with [FullnameFailureTooLong],
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      FullnameFailureEmpty() => 0,
      FullnameFailureInvalid() => 0,
      FullnameFailureTooLong(:final length) => length,
    };
  }
}

/// Represents a failure when the full name is empty.
final class FullnameFailureEmpty extends FullnameFailure {
  /// Creates a [FullnameFailureEmpty] instance with an optional custom error [code].
  const FullnameFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FullnameFailureEmpty && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'FullnameFailure.empty(code: \$code)';
}

/// Represents a failure when the full name has an invalid format or characters.
final class FullnameFailureInvalid extends FullnameFailure {
  /// Creates a [FullnameFailureInvalid] instance with an optional custom error [code].
  const FullnameFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FullnameFailureInvalid && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'FullnameFailure.invalid(code: \$code)';
}

/// Represents a failure when the full name exceeds the character limit.
final class FullnameFailureTooLong extends FullnameFailure {
  /// The target or maximum expected character length for the full name.
  final int length;

  /// Creates a [FullnameFailureTooLong] instance with an optional [code] and target [length].
  const FullnameFailureTooLong({String code = 'tooLong', this.length = 30})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FullnameFailureTooLong &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'FullnameFailure.tooLong(code: $code, length:$length)';
}
