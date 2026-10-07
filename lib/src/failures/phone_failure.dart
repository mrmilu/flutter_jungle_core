sealed class PhoneFailure {
  final String code;

  const PhoneFailure._(this.code);

  const factory PhoneFailure.empty({String code}) = PhoneFailureEmpty;
  const factory PhoneFailure.invalid({String code}) = PhoneFailureInvalid;
  const factory PhoneFailure.tooLong({String code, int length}) =
      PhoneFailureTooLong;

  int get maxLength {
    return switch (this) {
      PhoneFailureEmpty() => 0,
      PhoneFailureInvalid() => 0,
      PhoneFailureTooLong(:final length) => length,
    };
  }
}

class PhoneFailureEmpty extends PhoneFailure {
  const PhoneFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneFailureEmpty &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PhoneFailure.empty(code: $code)';
}

class PhoneFailureInvalid extends PhoneFailure {
  const PhoneFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneFailureInvalid &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PhoneFailure.invalid(code: $code)';
}

class PhoneFailureTooLong extends PhoneFailure {
  final int length;

  const PhoneFailureTooLong({String code = 'tooLong', this.length = 11})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PhoneFailureTooLong &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'PhoneFailure.tooLong(code: $code, length: $length)';
}
