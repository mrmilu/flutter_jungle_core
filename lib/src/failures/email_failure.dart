sealed class EmailFailure {
  final String code;

  const EmailFailure._(this.code);

  const factory EmailFailure.empty({String code}) = EmailFailureEmpty;
  const factory EmailFailure.invalid({String code}) = EmailFailureInvalid;
}

class EmailFailureEmpty extends EmailFailure {
  const EmailFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailFailureEmpty &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'EmailFailure.empty(code: $code)';
}

class EmailFailureInvalid extends EmailFailure {
  const EmailFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailFailureInvalid &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'EmailFailure.invalid(code: $code)';
}
