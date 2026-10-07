sealed class NieFailure {
  final String code;

  const NieFailure._(this.code);

  const factory NieFailure.empty({String code}) = NieFailureEmpty;

  const factory NieFailure.invalid({String code}) = NieFailureInvalid;

  const factory NieFailure.tooLong({String code, int length}) =
      NieFailureTooLong;

  const factory NieFailure.tooShort({String code, int length}) =
      NieFailureTooShort;

  int get maxLength {
    return switch (this) {
      NieFailureEmpty() => 0,
      NieFailureInvalid() => 0,
      NieFailureTooLong(:final length) => length,
      NieFailureTooShort(:final length) => length,
    };
  }
}

class NieFailureEmpty extends NieFailure {
  const NieFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NieFailureEmpty &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'NieFailure.empty(code: $code)';
}

class NieFailureInvalid extends NieFailure {
  const NieFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NieFailureInvalid &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'NieFailure.invalid(code: $code)';
}

class NieFailureTooLong extends NieFailure {
  final int length;

  const NieFailureTooLong({String code = 'tooLong', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NieFailureTooLong &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'NieFailure.tooLong(code: $code, length: $length)';
}

class NieFailureTooShort extends NieFailure {
  final int length;

  const NieFailureTooShort({String code = 'tooShort', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NieFailureTooShort &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'NieFailure.tooShort(code: $code, length: $length)';
}
