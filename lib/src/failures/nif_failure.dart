import 'package:freezed_annotation/freezed_annotation.dart';

part 'nif_failure.freezed.dart';

/// Represents validation failures for a NIF (Número de Identificación Fiscal / DNI).
@freezed
sealed class NifFailure with _$NifFailure {
  /// Private constructor required to allow custom getters or methods.
  const NifFailure._();

  /// The NIF field is empty or blank.
  const factory NifFailure.empty({@Default('empty') String code}) =
      NifFailureEmpty;

  /// The NIF format or check letter is invalid.
  const factory NifFailure.invalid({@Default('invalid') String code}) =
      NifFailureInvalid;

  /// The NIF exceeds the maximum allowed length.
  const factory NifFailure.tooLong({
    @Default('tooLong') String code,
    @Default(9) int length,
  }) = NifFailureTooLong;

  /// The NIF is shorter than the minimum required length.
  const factory NifFailure.tooShort({
    @Default('tooShort') String code,
    @Default(9) int length,
  }) = NifFailureTooShort;

  /// Returns the target length associated with length-related failures,
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      NifFailureEmpty() => 0,
      NifFailureInvalid() => 0,
      NifFailureTooLong(:final length) => length,
      NifFailureTooShort(:final length) => length,
    };
  }
}
