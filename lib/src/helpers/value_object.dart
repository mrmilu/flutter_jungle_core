import 'package:flutter/foundation.dart';

import 'either.dart';

/// An abstract base class for DDD (Domain-Driven Design) Value Objects encapsulating
/// validation logic using an [Either].
///
/// A [ValueObject] holds an [Either] instance representing either a failure of type [L]
/// (Left) or a valid domain value of type [R] (Right). It enforces equality based on
/// value rather than identity.
@immutable
abstract class ValueObject<L, R> {
  /// Base const constructor for subclasses.
  const ValueObject();

  /// Gets the underlying [Either] containing the failure [L] or valid value [R].
  Either<L, R> get value;

  /// Returns `true` if the underlying value is valid ([Either.isRight]).
  bool isValid() => value.isRight();

  /// Returns `true` if the underlying value is invalid ([Either.isLeft]).
  bool isInvalid() => value.isLeft();

  /// Returns the valid value [R] if valid, or throws an [UnexpectedValueError]
  /// containing failure [L] if invalid.
  ///
  /// Use this method only when a failure indicates an unrecoverable program state.
  R getOrCrash() => value.rightOrElse((l) => throw UnexpectedValueError<L>(l));

  /// Returns the valid value [R] if valid, or [orElse] if invalid.
  R getOrElse(R orElse) => value.rightOrElse((_) => orElse);

  /// Executes a side effect matching the current state ([isLeft] or [isRight]).
  void when({
    required void Function(L) isLeft,
    required void Function(R) isRight,
  }) => value.when(isLeft: isLeft, isRight: isRight);

  /// Maps the underlying [Either] state to a single value of type [T].
  T map<T>({required T Function(L) isLeft, required T Function(R) isRight}) =>
      value.map(isLeft: isLeft, isRight: isRight);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<L, R> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

/// An error thrown when [ValueObject.getOrCrash] is called on an invalid [ValueObject].
///
/// Represents an unrecoverable failure in application logic where an invalid value
/// reached a point requiring a valid domain value.
class UnexpectedValueError<T> extends Error {
  /// The failure payload associated with the invalid value.
  final T valueFailure;

  /// Creates an instance of [UnexpectedValueError] holding the [valueFailure].
  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was:$valueFailure');
  }
}
