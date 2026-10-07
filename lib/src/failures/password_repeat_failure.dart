sealed class PasswordRepeatFailure {
  final String code;

  const PasswordRepeatFailure._(this.code);

  const factory PasswordRepeatFailure.mismatched({String code}) =
      PasswordRepeatFailureMismatched;
}

class PasswordRepeatFailureMismatched extends PasswordRepeatFailure {
  const PasswordRepeatFailureMismatched({String code = 'mismatched'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordRepeatFailureMismatched &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordRepeatFailure.mismatched(code: $code)';
}
