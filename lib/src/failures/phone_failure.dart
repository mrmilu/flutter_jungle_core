import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_failure.freezed.dart';

/// Represents validation failures for a phone number field.
@freezed
sealed class PhoneFailure with _$PhoneFailure {
  /// Constructor privado necesario para permitir getters o métodos personalizados.
  const PhoneFailure._();

  /// The phone number is empty or blank.
  const factory PhoneFailure.empty({@Default('empty') String code}) =
      PhoneFailureEmpty;

  /// The phone number format or character set is invalid.
  const factory PhoneFailure.invalid({@Default('invalid') String code}) =
      PhoneFailureInvalid;

  /// The phone number exceeds the maximum allowed digit length.
  const factory PhoneFailure.tooLong({
    @Default('tooLong') String code,
    @Default(11) int length,
  }) = PhoneFailureTooLong;

  /// Returns the maximum expected digit length associated with [PhoneFailureTooLong],
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      PhoneFailureEmpty() => 0,
      PhoneFailureInvalid() => 0,
      PhoneFailureTooLong(:final length) => length,
    };
  }
}
