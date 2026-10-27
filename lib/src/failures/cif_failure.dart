import 'package:freezed_annotation/freezed_annotation.dart';

part 'cif_failure.freezed.dart';

/// Represents validation failures for a CIF (Código de Identificación Fiscal).
@freezed
sealed class CifFailure with _$CifFailure {
  /// Constructor privado necesario para permitir getters o métodos personalizados.
  const CifFailure._();

  /// The CIF field is empty.
  const factory CifFailure.empty({@Default('empty') String code}) =
      CifFailureEmpty;

  /// The CIF format or checksum is invalid.
  const factory CifFailure.invalid({@Default('invalid') String code}) =
      CifFailureInvalid;

  /// The CIF exceeds the maximum allowed length.
  const factory CifFailure.tooLong({
    @Default('tooLong') String code,
    @Default(9) int length,
  }) = CifFailureTooLong;

  /// The CIF is shorter than the minimum required length.
  const factory CifFailure.tooShort({
    @Default('tooShort') String code,
    @Default(9) int length,
  }) = CifFailureTooShort;

  /// Returns the expected or maximum length associated with length-related failures,
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      CifFailureEmpty() => 0,
      CifFailureInvalid() => 0,
      CifFailureTooLong(:final length) => length,
      CifFailureTooShort(:final length) => length,
    };
  }
}
