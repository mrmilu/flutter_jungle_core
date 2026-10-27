import 'package:freezed_annotation/freezed_annotation.dart';

part 'description_failure.freezed.dart';

/// Represents validation failures for a text description field.
@freezed
sealed class DescriptionFailure with _$DescriptionFailure {
  /// Private constructor required to allow custom getters or methods.
  const DescriptionFailure._();

  /// The description is empty or blank.
  const factory DescriptionFailure.empty({@Default('empty') String code}) =
      DescriptionFailureEmpty;

  /// The description contains invalid characters or formatting.
  const factory DescriptionFailure.invalid({@Default('invalid') String code}) =
      DescriptionFailureInvalid;

  /// The description exceeds the maximum allowed character limit.
  const factory DescriptionFailure.tooLong({
    @Default('tooLong') String code,
    @Default(320) int length,
  }) = DescriptionFailureTooLong;

  /// Returns the maximum expected character limit associated with [DescriptionFailureTooLong],
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      DescriptionFailureEmpty() => 0,
      DescriptionFailureInvalid() => 0,
      DescriptionFailureTooLong(:final length) => length,
    };
  }
}
