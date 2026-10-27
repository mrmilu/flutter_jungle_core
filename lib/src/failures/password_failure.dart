import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_failure.freezed.dart';

/// Represents validation failures for a password field based on common security policy rules.
@freezed
sealed class PasswordFailure with _$PasswordFailure {
  /// Constructor privado necesario para permitir getters o métodos personalizados.
  const PasswordFailure._();

  /// The password field is empty or blank.
  const factory PasswordFailure.empty({@Default('empty') String code}) =
      PasswordFailureEmpty;

  /// The password does not meet the minimum length requirement.
  const factory PasswordFailure.minLength({
    @Default('minLength') String code,
    @Default(8) int length,
  }) = PasswordFailureInvalidMinLength;

  /// The password is missing an uppercase letter.
  const factory PasswordFailure.includeUppercase({
    @Default('includeUppercase') String code,
  }) = PasswordFailureIncludeUppercase;

  /// The password is missing a lowercase letter.
  const factory PasswordFailure.includeLowercase({
    @Default('includeLowercase') String code,
  }) = PasswordFailureIncludeLowercase;

  /// The password is missing a special character.
  const factory PasswordFailure.includeSpecialCharacter({
    @Default('includeSpecialCharacter') String code,
  }) = PasswordFailureIncludeSpecialCharacter;

  /// The password is missing a numeric digit.
  const factory PasswordFailure.includeDigit({
    @Default('includeDigit') String code,
  }) = PasswordFailureIncludeDigit;

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
