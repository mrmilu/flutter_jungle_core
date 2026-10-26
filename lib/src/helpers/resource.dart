/// Represents the state of an asynchronous data fetch or resource operation.
///
/// Subclasses represent the four possible states: [ResourceNone], [ResourceLoading],
/// [ResourceSuccess], and [ResourceFailure].
sealed class Resource<F, T> {
  /// Base const constructor for subclasses.
  const Resource();

  /// Creates a [Resource] instance in its initial/idle state.
  const factory Resource.none() = ResourceNone;

  /// Creates a [Resource] instance representing an active loading state.
  const factory Resource.loading() = ResourceLoading;

  /// Creates a successful [Resource] instance holding the given [value].
  const factory Resource.success(T value) = ResourceSuccess;

  /// Creates a failed [Resource] instance holding the given [failure] detail.
  const factory Resource.failure(F failure) = ResourceFailure;

  /// Whether the current state is idle/none ([ResourceNone]).
  bool get isNone => this is ResourceNone;

  /// Whether the resource is currently loading ([ResourceLoading]).
  bool get isLoading => this is ResourceLoading;

  /// Whether the resource fetch completed successfully ([ResourceSuccess]).
  bool get isSuccess => this is ResourceSuccess;

  /// Whether the resource fetch resulted in a failure ([ResourceFailure]).
  bool get isFailure => this is ResourceFailure;

  /// Returns the underlying payload value of type [T] if the state is [ResourceSuccess],
  /// or `null` otherwise.
  T? get value => switch (this) {
    ResourceSuccess(:final value) => value,
    _ => null,
  };

  /// Returns the underlying failure detail of type [F] if the state is [ResourceFailure],
  /// or `null` otherwise.
  F? get failure => switch (this) {
    ResourceFailure(:final failure) => failure,
    _ => null,
  };

  /// Invokes the [isFailure] callback if the current state is [ResourceFailure].
  ///
  /// Returns the failure payload of type [F] if applicable, or `null` otherwise.
  F? whenIsFailure(void Function(F failure) isFailure) {
    if (this case ResourceFailure(:final failure)) {
      isFailure(failure);
      return failure;
    }
    return null;
  }

  /// Invokes the [isSuccess] callback if the current state is [ResourceSuccess].
  ///
  /// Returns the resource value of type [T] if applicable, or `null` otherwise.
  T? whenIsSuccess(void Function(T resource) isSuccess) {
    if (this case ResourceSuccess(value: final resource)) {
      isSuccess(resource);
      return resource;
    }
    return null;
  }

  /// Executes a non-returning side effect matching the current state.
  void when({
    required void Function() isNone,
    required void Function() isLoading,
    required void Function(T resource) isSuccess,
    required void Function(F failure) isFailure,
  }) {
    switch (this) {
      case ResourceNone():
        isNone();
      case ResourceLoading():
        isLoading();
      case ResourceSuccess(:final value):
        isSuccess(value);
      case ResourceFailure(:final failure):
        isFailure(failure);
    }
  }

  /// Maps the current state to a single value of type [R].
  R map<R>({
    required R Function() isNone,
    required R Function() isLoading,
    required R Function(T resource) isSuccess,
    required R Function(F failure) isFailure,
  }) {
    return switch (this) {
      ResourceNone() => isNone(),
      ResourceLoading() => isLoading(),
      ResourceSuccess(:final value) => isSuccess(value),
      ResourceFailure(:final failure) => isFailure(failure),
    };
  }

  /// Executes an optional callback corresponding to the current state.
  ///
  /// If the current state's callback is omitted, [orElse] is executed instead.
  void maybeWhen({
    void Function()? isNone,
    void Function()? isLoading,
    void Function(T resource)? isSuccess,
    void Function(F failure)? isFailure,
    required void Function() orElse,
  }) {
    switch (this) {
      case ResourceNone() when isNone != null:
        isNone();
      case ResourceLoading() when isLoading != null:
        isLoading();
      case ResourceSuccess(:final value) when isSuccess != null:
        isSuccess(value);
      case ResourceFailure(:final failure) when isFailure != null:
        isFailure(failure);
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
    R Function(T resource)? isSuccess,
    R Function(F failure)? isFailure,
    required R Function() orElse,
  }) {
    return switch (this) {
      ResourceNone() when isNone != null => isNone(),
      ResourceLoading() when isLoading != null => isLoading(),
      ResourceSuccess(:final value) when isSuccess != null => isSuccess(value),
      ResourceFailure(:final failure) when isFailure != null => isFailure(
        failure,
      ),
      _ => orElse(),
    };
  }
}

/// Represents the initial or idle state of a [Resource].
final class ResourceNone<F, T> extends Resource<F, T> {
  /// Creates an instance of [ResourceNone].
  const ResourceNone();
}

/// Represents the active loading state of a [Resource].
final class ResourceLoading<F, T> extends Resource<F, T> {
  /// Creates an instance of [ResourceLoading].
  const ResourceLoading();
}

/// Represents a successful [Resource] state carrying a payload [value] of type [T].
final class ResourceSuccess<F, T> extends Resource<F, T> {
  @override
  final T value;

  /// Creates an instance of [ResourceSuccess] with the given [value].
  const ResourceSuccess(this.value);
}

/// Represents a failed [Resource] state carrying a [failure] detail of type [F].
final class ResourceFailure<F, T> extends Resource<F, T> {
  @override
  final F failure;

  /// Creates an instance of [ResourceFailure] with the given [failure].
  const ResourceFailure(this.failure);
}
