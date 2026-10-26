/// Represents validation failures for a text description field.
///
/// Subclasses define specific failure cases:
/// - [DescriptionFailureEmpty]: The description is empty or blank.
/// - [DescriptionFailureInvalid]: The description contains invalid characters or formatting.
/// - [DescriptionFailureTooLong]: The description exceeds the maximum allowed character limit.
sealed class DescriptionFailure {
  /// The error code identifying the type of failure.
  final String code;

  const DescriptionFailure._(this.code);

  /// Creates a [DescriptionFailureEmpty] instance.
  const factory DescriptionFailure.empty({String code}) =
      DescriptionFailureEmpty;

  /// Creates a [DescriptionFailureInvalid] instance.
  const factory DescriptionFailure.invalid({String code}) =
      DescriptionFailureInvalid;

  /// Creates a [DescriptionFailureTooLong] instance with an optional target [length].
  const factory DescriptionFailure.tooLong({String code, int length}) =
      DescriptionFailureTooLong;

  /// Returns the maximum expected character limit associated with [DescriptionFailureTooLong],
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      DescriptionFailureEmpty() => 0,
      DescriptionFailureInvalid() => 0,
      DescriptionFailureTooLong(:final length) => length,
    };
  }
}

/// Represents a failure when the description is empty.
final class DescriptionFailureEmpty extends DescriptionFailure {
  /// Creates a [DescriptionFailureEmpty] instance with an optional custom error [code].
  const DescriptionFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DescriptionFailureEmpty && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'DescriptionFailure.empty(code: \$code)';
}

/// Represents a failure when the description has an invalid format or characters.
final class DescriptionFailureInvalid extends DescriptionFailure {
  /// Creates a [DescriptionFailureInvalid] instance with an optional custom error [code].
  const DescriptionFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DescriptionFailureInvalid && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'DescriptionFailure.invalid(code: \$code)';
}

/// Represents a failure when the description exceeds the character limit.
final class DescriptionFailureTooLong extends DescriptionFailure {
  /// The target or maximum expected character length for the description.
  final int length;

  /// Creates a [DescriptionFailureTooLong] instance with an optional [code] and target [length].
  const DescriptionFailureTooLong({String code = 'tooLong', this.length = 320})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DescriptionFailureTooLong &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() =>
      'DescriptionFailure.tooLong(code: $code, length:$length)';
}
