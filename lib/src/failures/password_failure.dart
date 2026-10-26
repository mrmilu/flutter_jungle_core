/// Represents validation failures for a password field based on common security policy rules.
///
/// Subclasses define specific failure cases:
/// - [PasswordFailureEmpty]: The password field is empty or blank.
/// - [PasswordFailureInvalidMinLength]: The password does not meet the minimum length requirement.
/// - [PasswordFailureIncludeUppercase]: The password is missing an uppercase letter.
/// - [PasswordFailureIncludeLowercase]: The password is missing a lowercase letter.
/// - [PasswordFailureIncludeSpecialCharacter]: The password is missing a special character.
/// - [PasswordFailureIncludeDigit]: The password is missing a numeric digit.
sealed class PasswordFailure {
  /// The error code identifying the type of failure.
  final String code;

  const PasswordFailure._(this.code);

  /// Creates a [PasswordFailureEmpty] instance.
  const factory PasswordFailure.empty({String code}) = PasswordFailureEmpty;

  /// Creates a [PasswordFailureInvalidMinLength] instance with an optional target [length].
  const factory PasswordFailure.minLength({String code, int length}) =
      PasswordFailureInvalidMinLength;

  /// Creates a [PasswordFailureIncludeUppercase] instance.
  const factory PasswordFailure.includeUppercase({String code}) =
      PasswordFailureIncludeUppercase;

  /// Creates a [PasswordFailureIncludeLowercase] instance.
  const factory PasswordFailure.includeLowercase({String code}) =
      PasswordFailureIncludeLowercase;

  /// Creates a [PasswordFailureIncludeSpecialCharacter] instance.
  const factory PasswordFailure.includeSpecialCharacter({String code}) =
      PasswordFailureIncludeSpecialCharacter;

  /// Creates a [PasswordFailureIncludeDigit] instance.
  const factory PasswordFailure.includeDigit({String code}) =
      PasswordFailureIncludeDigit;

  /// Returns the target length associated with [PasswordFailureInvalidMinLength],
  /// or `0` for other rule failures.
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

/// Represents a failure when the password is empty.
final class PasswordFailureEmpty extends PasswordFailure {
  /// Creates a [PasswordFailureEmpty] instance with an optional custom error [code].
  const PasswordFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureEmpty && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.empty(code: \$code)';
}

/// Represents a failure when the password does not meet the minimum required length.
final class PasswordFailureInvalidMinLength extends PasswordFailure {
  /// The minimum expected character length for the password.
  final int length;

  /// Creates a [PasswordFailureInvalidMinLength] instance with an optional [code] and target [length].
  const PasswordFailureInvalidMinLength({
    String code = 'minLength',
    this.length = 8,
  }) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureInvalidMinLength &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'PasswordFailure.minLength(code: $code, length:$length)';
}

/// Represents a failure when the password does not contain an uppercase letter.
final class PasswordFailureIncludeUppercase extends PasswordFailure {
  /// Creates a [PasswordFailureIncludeUppercase] instance with an optional custom error [code].
  const PasswordFailureIncludeUppercase({String code = 'includeUppercase'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureIncludeUppercase && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.includeUppercase(code: \$code)';
}

/// Represents a failure when the password does not contain a lowercase letter.
final class PasswordFailureIncludeLowercase extends PasswordFailure {
  /// Creates a [PasswordFailureIncludeLowercase] instance with an optional custom error [code].
  const PasswordFailureIncludeLowercase({String code = 'includeLowercase'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureIncludeLowercase && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.includeLowercase(code: \$code)';
}

/// Represents a failure when the password does not contain a special character.
final class PasswordFailureIncludeSpecialCharacter extends PasswordFailure {
  /// Creates a [PasswordFailureIncludeSpecialCharacter] instance with an optional custom error [code].
  const PasswordFailureIncludeSpecialCharacter({
    String code = 'includeSpecialCharacter',
  }) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureIncludeSpecialCharacter && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.includeSpecialCharacter(code: \$code)';
}

/// Represents a failure when the password does not contain a numeric digit.
final class PasswordFailureIncludeDigit extends PasswordFailure {
  /// Creates a [PasswordFailureIncludeDigit] instance with an optional custom error [code].
  const PasswordFailureIncludeDigit({String code = 'includeDigit'})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordFailureIncludeDigit && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'PasswordFailure.includeDigit(code: \$code)';
}
