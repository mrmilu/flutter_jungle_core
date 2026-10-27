import 'package:freezed_annotation/freezed_annotation.dart';

part 'nie_failure.freezed.dart';

/// Represents validation failures for a NIE (Número de Identidad de Extranjero).
@freezed
sealed class NieFailure with _$NieFailure {
  /// Constructor privado necesario para permitir getters o métodos personalizados.
  const NieFailure._();

  /// The NIE field is empty or blank.
  const factory NieFailure.empty({@Default('empty') String code}) =
      NieFailureEmpty;

  /// The NIE format or checksum is invalid.
  const factory NieFailure.invalid({@Default('invalid') String code}) =
      NieFailureInvalid;

  /// The NIE exceeds the maximum allowed length.
  const factory NieFailure.tooLong({
    @Default('tooLong') String code,
    @Default(9) int length,
  }) = NieFailureTooLong;

  /// The NIE is shorter than the minimum required length.
  const factory NieFailure.tooShort({
    @Default('tooShort') String code,
    @Default(9) int length,
  }) = NieFailureTooShort;

  /// Returns the target length associated with length-related failures,
  /// or `0` for empty and invalid cases.
  int get maxLength {
    return switch (this) {
      NieFailureEmpty() => 0,
      NieFailureInvalid() => 0,
      NieFailureTooLong(:final length) => length,
      NieFailureTooShort(:final length) => length,
    };
  }
}
