/// Represents validation failures for a NIE (Número de Identidad de Extranjero).
///
/// Subclasses define specific failure cases:
/// - [NieFailureEmpty]: The NIE field is empty or blank.
/// - [NieFailureInvalid]: The NIE format or checksum is invalid.
/// - [NieFailureTooLong]: The NIE exceeds the maximum allowed length.
/// - [NieFailureTooShort]: The NIE is shorter than the minimum required length.
sealed class NieFailure {
  /// The error code identifying the type of failure.
  final String code;

  const NieFailure._(this.code);

  /// Creates a [NieFailureEmpty] instance.
  const factory NieFailure.empty({String code}) = NieFailureEmpty;

  /// Creates a [NieFailureInvalid] instance.
  const factory NieFailure.invalid({String code}) = NieFailureInvalid;

  /// Creates a [NieFailureTooLong] instance with an optional target [length].
  const factory NieFailure.tooLong({String code, int length}) =
      NieFailureTooLong;

  /// Creates a [NieFailureTooShort] instance with an optional target [length].
  const factory NieFailure.tooShort({String code, int length}) =
      NieFailureTooShort;

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

/// Represents a failure when the NIE is empty.
final class NieFailureEmpty extends NieFailure {
  /// Creates a [NieFailureEmpty] instance with an optional custom error [code].
  const NieFailureEmpty({String code = 'empty'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is NieFailureEmpty && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'NieFailure.empty(code: \$code)';
}

/// Represents a failure when the NIE format or check letter is invalid.
final class NieFailureInvalid extends NieFailure {
  /// Creates a [NieFailureInvalid] instance with an optional custom error [code].
  const NieFailureInvalid({String code = 'invalid'}) : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NieFailureInvalid && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => 'NieFailure.invalid(code: \$code)';
}

/// Represents a failure when the NIE exceeds the allowed character length.
final class NieFailureTooLong extends NieFailure {
  /// The target or maximum expected character length for the NIE.
  final int length;

  /// Creates a [NieFailureTooLong] instance with an optional [code] and target [length].
  const NieFailureTooLong({String code = 'tooLong', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NieFailureTooLong &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'NieFailure.tooLong(code: $code, length:$length)';
}

/// Represents a failure when the NIE is shorter than required.
final class NieFailureTooShort extends NieFailure {
  /// The target or minimum expected character length for the NIE.
  final int length;

  /// Creates a [NieFailureTooShort] instance with an optional [code] and target [length].
  const NieFailureTooShort({String code = 'tooShort', this.length = 9})
    : super._(code);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NieFailureTooShort &&
          code == other.code &&
          length == other.length;

  @override
  int get hashCode => Object.hash(code, length);

  @override
  String toString() => 'NieFailure.tooShort(code: $code, length:$length)';
}
