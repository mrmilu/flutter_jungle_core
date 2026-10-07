sealed class PasswordFailure {
  final String code;

  const PasswordFailure._(this.code);

  const factory PasswordFailure.empty({String code}) = PasswordFailureEmpty;

  const factory PasswordFailure.minLength({String code, int length}) =
      PasswordFailureInvalidMinLength;

  const factory PasswordFailure.includeUppercase({String code}) =
      PasswordFailureIncludeUppercase;

  const factory PasswordFailure.includeLowercase({String code}) =
      PasswordFailureIncludeLowercase;

  const factory PasswordFailure.includeSpecialCharacter({String code}) =
      PasswordFailureIncludeSpecialCharacter;

  const factory PasswordFailure.includeDigit({String code}) =
      PasswordFailureIncludeDigit;

  int get maxLength {
    return switch (this) {
      PasswordFailureEmpty() => 0,
      PasswordFailureInvalidMinLength(:final length) => length,
      PasswordFailureIncludeUppercase() => 0,
      PasswordFailureIncludeLowercase() => 0,
      PasswordFailureIncludeSpecialCharacter() => 0,
      PasswordFailureIncludeDigit() => 0,
    };
  }
}

class PasswordFailureEmpty extends PasswordFailure {
  const PasswordFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureEmpty &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.empty(code: $code)';
}

class PasswordFailureInvalidMinLength extends PasswordFailure {
  final int length;

  const PasswordFailureInvalidMinLength({
    String code = 'minLength',
    this.length = 8,
  }) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureInvalidMinLength &&
          runtimeType == other.runtimeType &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() =>
      'PasswordFailure.minLength(code: $code, length: $length)';
}

class PasswordFailureIncludeUppercase extends PasswordFailure {
  const PasswordFailureIncludeUppercase({String code = 'includeUppercase'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureIncludeUppercase &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.includeUppercase(code: $code)';
}

class PasswordFailureIncludeLowercase extends PasswordFailure {
  const PasswordFailureIncludeLowercase({String code = 'includeLowercase'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureIncludeLowercase &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.includeLowercase(code: $code)';
}

class PasswordFailureIncludeSpecialCharacter extends PasswordFailure {
  const PasswordFailureIncludeSpecialCharacter({
    String code = 'includeSpecialCharacter',
  }) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureIncludeSpecialCharacter &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.includeSpecialCharacter(code: $code)';
}

class PasswordFailureIncludeDigit extends PasswordFailure {
  const PasswordFailureIncludeDigit({String code = 'includeDigit'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureIncludeDigit &&
          runtimeType == other.runtimeType &&
          code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.includeDigit(code: $code)';
}
