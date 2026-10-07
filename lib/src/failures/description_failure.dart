sealed class DescriptionFailure {
  final String code;

  const DescriptionFailure._(this.code);

  const factory DescriptionFailure.empty({String code}) =
      DescriptionFailureEmpty;
  const factory DescriptionFailure.invalid({String code}) =
      DescriptionFailureInvalid;
  const factory DescriptionFailure.tooLong({String code, int length}) =
      DescriptionFailureTooLong;

  int get maxLength {
    return switch (this) {
      DescriptionFailureEmpty() => 0,
      DescriptionFailureInvalid() => 0,
      DescriptionFailureTooLong(:final length) => length,
    };
  }
}

class DescriptionFailureEmpty extends DescriptionFailure {
  const DescriptionFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DescriptionFailureEmpty &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'DescriptionFailure.empty(code: $code)';
}

class DescriptionFailureInvalid extends DescriptionFailure {
  const DescriptionFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DescriptionFailureInvalid &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'DescriptionFailure.invalid(code: $code)';
}

class DescriptionFailureTooLong extends DescriptionFailure {
  final int length;

  const DescriptionFailureTooLong({String code = 'tooLong', this.length = 320})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DescriptionFailureTooLong &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() =>
      'DescriptionFailure.tooLong(code: $code, length: $length)';
}
