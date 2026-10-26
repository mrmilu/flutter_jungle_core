/// Represents the result state of an operation that returns no success payload (void),
/// only tracking status and potential failures.
///
/// Subclasses represent the four possible states: [ResultOrNone], [ResultOrLoading],
/// [ResultOrSuccess], and [ResultOrFailure].
sealed class ResultOr<F> {
  /// Base const constructor for subclasses.
  const ResultOr();

  /// Creates a [ResultOr] instance in its initial/idle state.
  const factory ResultOr.none() = ResultOrNone;

  /// Creates a [ResultOr] instance representing an active loading state.
  const factory ResultOr.loading() = ResultOrLoading;

  /// Creates a successful [ResultOr] instance without payload.
  const factory ResultOr.success() = ResultOrSuccess;

  /// Creates a failed [ResultOr] instance holding the given [failure] detail.
  const factory ResultOr.failure(F failure) = ResultOrFailure;

  /// Whether the current state is idle/none ([ResultOrNone]).
  bool get isNone => this is ResultOrNone;

  /// Whether the operation is currently loading ([ResultOrLoading]).
  bool get isLoading => this is ResultOrLoading;

  /// Whether the operation completed successfully ([ResultOrSuccess]).
  bool get isSuccess => this is ResultOrSuccess;

  /// Whether the operation resulted in a failure ([ResultOrFailure]).
  bool get isFailure => this is ResultOrFailure;

  /// Returns the underlying failure detail of type [F] if the state is [ResultOrFailure],
  /// or `null` otherwise.
  F? get failure => switch (this) {
    ResultOrFailure(:final failure) => failure,
    _ => null,
  };

  /// Invokes the [isFailure] callback if the current state is [ResultOrFailure].
  ///
  /// Returns the failure payload of type [F] if applicable, or `null` otherwise.
  F? whenIsFailure(void Function(F failure) isFailure) {
    if (this case ResultOrFailure(:final failure)) {
      isFailure(failure);
      return failure;
    }
    return null;
  }

  /// Invokes the [isSuccess] callback if the current state is [ResultOrSuccess].
  void whenIsSuccess(void Function() isSuccess) {
    if (this is ResultOrSuccess) {
      isSuccess();
    }
  }

  /// Executes a non-returning side effect matching the current state.
  void when({
    required void Function() isNone,
    required void Function() isLoading,
    required void Function(F failure) isFailure,
    required void Function() isSuccess,
  }) {
    switch (this) {
      case ResultOrNone():
        isNone();
      case ResultOrLoading():
        isLoading();
      case ResultOrFailure(:final failure):
        isFailure(failure);
      case ResultOrSuccess():
        isSuccess();
    }
  }

  /// Maps the current state to a single value of type [R].
  R map<R>({
    required R Function() isNone,
    required R Function() isLoading,
    required R Function(F failure) isFailure,
    required R Function() isSuccess,
  }) {
    return switch (this) {
      ResultOrNone() => isNone(),
      ResultOrLoading() => isLoading(),
      ResultOrFailure(:final failure) => isFailure(failure),
      ResultOrSuccess() => isSuccess(),
    };
  }

  /// Executes an optional callback corresponding to the current state.
  ///
  /// If the current state's callback is omitted, [orElse] is executed instead.
  void maybeWhen({
    void Function()? isNone,
    void Function()? isLoading,
    void Function(F failure)? isFailure,
    void Function()? isSuccess,
    required void Function() orElse,
  }) {
    switch (this) {
      case ResultOrNone() when isNone != null:
        isNone();
      case ResultOrLoading() when isLoading != null:
        isLoading();
      case ResultOrFailure(:final failure) when isFailure != null:
        isFailure(failure);
      case ResultOrSuccess() when isSuccess != null:
        isSuccess();
      default:
        orElse();
    }
  }

  /// Maps the current state to a value of type [R] using optional callbacks.
  ///
  /// If the current state's callback is omitted, returns the result of [orElse].
  R maybeMap<R>({
    R Function()? isNone,
    R Function()? isLoading,
    R Function(F failure)? isFailure,
    R Function()? isSuccess,
    required R Function() orElse,
  }) {
    return switch (this) {
      ResultOrNone() when isNone != null => isNone(),
      ResultOrLoading() when isLoading != null => isLoading(),
      ResultOrFailure(:final failure) when isFailure != null => isFailure(
        failure,
      ),
      ResultOrSuccess() when isSuccess != null => isSuccess(),
      _ => orElse(),
    };
  }
}

/// Represents the initial or idle state of a [ResultOr].
final class ResultOrNone<F> extends ResultOr<F> {
  /// Creates an instance of [ResultOrNone].
  const ResultOrNone();
}

/// Represents the active loading state of a [ResultOr].
final class ResultOrLoading<F> extends ResultOr<F> {
  /// Creates an instance of [ResultOrLoading].
  const ResultOrLoading();
}

/// Represents a successful [ResultOr] state without a payload.
final class ResultOrSuccess<F> extends ResultOr<F> {
  /// Creates an instance of [ResultOrSuccess].
  const ResultOrSuccess();
}

/// Represents a failed [ResultOr] state carrying a [failure] detail of type [F].
final class ResultOrFailure<F> extends ResultOr<F> {
  @override
  final F failure;

  /// Creates an instance of [ResultOrFailure] with the given [failure].
  const ResultOrFailure(this.failure);
}
