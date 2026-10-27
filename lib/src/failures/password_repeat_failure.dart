import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_repeat_failure.freezed.dart';

/// Represents validation failures when confirming or repeating a password.
@freezed
sealed class PasswordRepeatFailure with _$PasswordRepeatFailure {
  /// The repeated password does not match the original password.
  const factory PasswordRepeatFailure.mismatched({
    @Default('mismatched') String code,
  }) = PasswordRepeatFailureMismatched;
}
