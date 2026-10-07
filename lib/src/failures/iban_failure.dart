sealed class IbanFailure {
  final String code;

  const IbanFailure._(this.code);

  const factory IbanFailure.empty({String code}) = IbanFailureEmpty;

  const factory IbanFailure.invalid({String code}) = IbanFailureInvalid;

  const factory IbanFailure.tooLong({String code, int length}) =
      IbanFailureTooLong;

  const factory IbanFailure.tooShort({String code, int length}) =
      IbanFailureTooShort;

  const factory IbanFailure.invalidFormat({String code}) =
      IbanFailureInvalidFormat;

  const factory IbanFailure.invalidChecksum({String code}) =
      IbanFailureInvalidChecksum;

  int get maxLength {
    return switch (this) {
      IbanFailureEmpty() => 0,
      IbanFailureInvalid() => 0,
      IbanFailureTooLong(:final length) => length,
      IbanFailureTooShort(:final length) => length,
      IbanFailureInvalidFormat() => 0,
      IbanFailureInvalidChecksum() => 0,
    };
  }
}

class IbanFailureEmpty extends IbanFailure {
  const IbanFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureEmpty &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'IbanFailure.empty(code: $code)';
}

class IbanFailureInvalid extends IbanFailure {
  const IbanFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureInvalid &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'IbanFailure.invalid(code: $code)';
}

class IbanFailureTooLong extends IbanFailure {
  final int length;

  const IbanFailureTooLong({String code = 'tooLong', this.length = 24})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureTooLong &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'IbanFailure.tooLong(code: $code, length: $length)';
}

class IbanFailureTooShort extends IbanFailure {
  final int length;

  const IbanFailureTooShort({String code = 'tooShort', this.length = 24})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureTooShort &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'IbanFailure.tooShort(code: $code, length: $length)';
}

class IbanFailureInvalidFormat extends IbanFailure {
  const IbanFailureInvalidFormat({String code = 'invalidFormat'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureInvalidFormat &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'IbanFailure.invalidFormat(code: $code)';
}

class IbanFailureInvalidChecksum extends IbanFailure {
  const IbanFailureInvalidChecksum({String code = 'invalidChecksum'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IbanFailureInvalidChecksum &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'IbanFailure.invalidChecksum(code: $code)';
}
