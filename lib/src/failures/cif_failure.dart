sealed class CifFailure {
  final String code;

  const CifFailure._(this.code);

  const factory CifFailure.empty({String code}) = CifFailureEmpty;

  const factory CifFailure.invalid({String code}) = CifFailureInvalid;

  const factory CifFailure.tooLong({String code, int length}) =
      CifFailureTooLong;

  const factory CifFailure.tooShort({String code, int length}) =
      CifFailureTooShort;

  int get maxLength {
    return switch (this) {
      CifFailureEmpty() => 0,
      CifFailureInvalid() => 0,
      CifFailureTooLong(:final length) => length,
      CifFailureTooShort(:final length) => length,
    };
  }
}

class CifFailureEmpty extends CifFailure {
  const CifFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CifFailureEmpty &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'CifFailure.empty(code: $code)';
}

class CifFailureInvalid extends CifFailure {
  const CifFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CifFailureInvalid &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'CifFailure.invalid(code: $code)';
}

class CifFailureTooLong extends CifFailure {
  final int length;

  const CifFailureTooLong({String code = 'tooLong', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CifFailureTooLong &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'CifFailure.tooLong(code: $code, length: $length)';
}

class CifFailureTooShort extends CifFailure {
  final int length;

  const CifFailureTooShort({String code = 'tooShort', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CifFailureTooShort &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'CifFailure.tooShort(code: $code, length: $length)';
}
