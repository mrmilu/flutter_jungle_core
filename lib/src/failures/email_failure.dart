/// Represents validation failures for an email address field.
///
/// Subclasses define specific failure cases:
/// - [EmailFailureEmpty]: The email address is empty or blank.
/// - [EmailFailureInvalid]: The email address does not follow a valid email format.
sealed class EmailFailure {
  /// The error code identifying the type of failure.
  final String code;

  const EmailFailure._(this.code);

  /// Creates an [EmailFailureEmpty] instance.
  const factory EmailFailure.empty({String code}) = EmailFailureEmpty;

  /// Creates an [EmailFailureInvalid] instance.
  const factory EmailFailure.invalid({String code}) = EmailFailureInvalid;
}

/// Represents a failure when the email address is empty.
final class EmailFailureEmpty extends EmailFailure {
  /// Creates an [EmailFailureEmpty] instance with an optional custom error [code].
  const EmailFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailFailureEmpty && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'EmailFailure.empty(code: $code)';
}

/// Represents a failure when the email address has an invalid format.
final class EmailFailureInvalid extends EmailFailure {
  /// Creates an [EmailFailureInvalid] instance with an optional custom error [code].
  const EmailFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailFailureInvalid && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'EmailFailure.invalid(code: $code)';
}
