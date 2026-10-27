import 'package:freezed_annotation/freezed_annotation.dart';

part 'fullname_failure.freezed.dart';

/// Represents validation failures for a full name field.
@freezed
sealed class FullnameFailure with _$FullnameFailure {
  /// Constructor privado necesario para permitir getters o métodos personalizados.
  const FullnameFailure._();

  /// The full name field is empty or blank.
  const factory FullnameFailure.empty({@Default('empty') String code}) =
      FullnameFailureEmpty;

  /// The full name contains invalid characters or structure.
  const factory FullnameFailure.invalid({@Default('invalid') String code}) =
      FullnameFailureInvalid;

  /// The full name exceeds the maximum allowed character length.
  const factory FullnameFailure.tooLong({
    @Default('tooLong') String code,
    @Default(30) int length,
  }) = FullnameFailureTooLong;

  /// Returns the maximum expected character limit associated with [FullnameFailureTooLong],
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      FullnameFailureEmpty() => 0,
      FullnameFailureInvalid() => 0,
      FullnameFailureTooLong(:final length) => length,
    };
  }
}
