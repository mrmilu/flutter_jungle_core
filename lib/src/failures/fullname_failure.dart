sealed class FullnameFailure {
  final String code;

  const FullnameFailure._(this.code);

  const factory FullnameFailure.empty({String code}) = FullnameFailureEmpty;
  const factory FullnameFailure.invalid({String code}) = FullnameFailureInvalid;
  const factory FullnameFailure.tooLong({String code, int length}) =
      FullnameFailureTooLong;

  int get maxLength {
    return switch (this) {
      FullnameFailureEmpty() => 0,
      FullnameFailureInvalid() => 0,
      FullnameFailureTooLong(:final length) => length,
    };
  }
}

class FullnameFailureEmpty extends FullnameFailure {
  const FullnameFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FullnameFailureEmpty &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'FullnameFailure.empty(code: $code)';
}

class FullnameFailureInvalid extends FullnameFailure {
  const FullnameFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FullnameFailureInvalid &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'FullnameFailure.invalid(code: $code)';
}

class FullnameFailureTooLong extends FullnameFailure {
  final int length;

  const FullnameFailureTooLong({String code = 'tooLong', this.length = 30})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FullnameFailureTooLong &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'FullnameFailure.tooLong(code: $code, length: $length)';
}
