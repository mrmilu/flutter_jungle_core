import 'package:freezed_annotation/freezed_annotation.dart';

part 'iban_failure.freezed.dart';

/// Represents validation failures for an IBAN (International Bank Account Number).
@freezed
sealed class IbanFailure with _$IbanFailure {
  /// Private constructor required to allow custom getters or methods.
  const IbanFailure._();

  /// The IBAN field is empty or blank.
  const factory IbanFailure.empty({@Default('empty') String code}) =
      IbanFailureEmpty;

  /// Generic invalid IBAN failure.
  const factory IbanFailure.invalid({@Default('invalid') String code}) =
      IbanFailureInvalid;

  /// The IBAN exceeds the maximum allowed character length.
  const factory IbanFailure.tooLong({
    @Default('tooLong') String code,
    @Default(24) int length,
  }) = IbanFailureTooLong;

  /// The IBAN is shorter than the minimum required character length.
  const factory IbanFailure.tooShort({
    @Default('tooShort') String code,
    @Default(24) int length,
  }) = IbanFailureTooShort;

  /// The IBAN structure or character set is invalid.
  const factory IbanFailure.invalidFormat({
    @Default('invalidFormat') String code,
  }) = IbanFailureInvalidFormat;

  /// The IBAN fails the mod-97 check digit validation.
  const factory IbanFailure.invalidChecksum({
    @Default('invalidChecksum') String code,
  }) = IbanFailureInvalidChecksum;

  /// Returns the target length associated with length-related failures,
  /// or `0` for other cases.
  int get maxLength {
    return switch (this) {
      IbanFailureEmpty() => 0,
      IbanFailureInvalid() => 0,
      IbanFailureTooLong(:final length) => length,
      IbanFailureTooShort(:final length) => length,
      IbanFailureInvalidFormat() => 0,
      IbanFailureInvalidChecksum() => 0,
    };
  }
}
