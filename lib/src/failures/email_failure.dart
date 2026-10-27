import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_failure.freezed.dart';

/// Represents validation failures for an email address field.
@freezed
sealed class EmailFailure with _$EmailFailure {
  /// The email address is empty or blank.
  const factory EmailFailure.empty({@Default('empty') String code}) =
      EmailFailureEmpty;

  /// The email address does not follow a valid email format.
  const factory EmailFailure.invalid({@Default('invalid') String code}) =
      EmailFailureInvalid;
}
