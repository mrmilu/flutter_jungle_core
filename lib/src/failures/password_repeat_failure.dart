/// Represents validation failures when confirming or repeating a password.
///
/// Subclasses define specific failure cases:
/// - [PasswordRepeatFailureMismatched]: The repeated password does not match the original password.
sealed class PasswordRepeatFailure {
  /// The error code identifying the type of failure.
  final String code;

  const PasswordRepeatFailure._(this.code);

  /// Creates a [PasswordRepeatFailureMismatched] instance.
  const factory PasswordRepeatFailure.mismatched({String code}) =
      PasswordRepeatFailureMismatched;
}

/// Represents a failure when the repeated password does not match the primary password.
final class PasswordRepeatFailureMismatched extends PasswordRepeatFailure {
  /// Creates a [PasswordRepeatFailureMismatched] instance with an optional custom error [code].
  const PasswordRepeatFailureMismatched({String code = 'mismatched'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordRepeatFailureMismatched && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordRepeatFailure.mismatched(code: $code)';
}
