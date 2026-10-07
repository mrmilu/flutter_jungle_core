sealed class NifFailure {
  final String code;

  const NifFailure._(this.code);

  const factory NifFailure.empty({String code}) = NifFailureEmpty;

  const factory NifFailure.invalid({String code}) = NifFailureInvalid;

  const factory NifFailure.tooLong({String code, int length}) =
      NifFailureTooLong;

  const factory NifFailure.tooShort({String code, int length}) =
      NifFailureTooShort;

  int get maxLength {
    return switch (this) {
      NifFailureEmpty() => 0,
      NifFailureInvalid() => 0,
      NifFailureTooLong(:final length) => length,
      NifFailureTooShort(:final length) => length,
    };
  }
}

class NifFailureEmpty extends NifFailure {
  const NifFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NifFailureEmpty &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'NifFailure.empty(code: $code)';
}

class NifFailureInvalid extends NifFailure {
  const NifFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NifFailureInvalid &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'NifFailure.invalid(code: $code)';
}

class NifFailureTooLong extends NifFailure {
  final int length;

  const NifFailureTooLong({String code = 'tooLong', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NifFailureTooLong &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'NifFailure.tooLong(code: $code, length: $length)';
}

class NifFailureTooShort extends NifFailure {
  final int length;

  const NifFailureTooShort({String code = 'tooShort', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NifFailureTooShort &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'NifFailure.tooShort(code: $code, length: $length)';
}
