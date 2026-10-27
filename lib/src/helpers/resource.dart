import 'package:freezed_annotation/freezed_annotation.dart';

part 'resource.freezed.dart';

/// Represents the state of an asynchronous data fetch or resource operation.
@freezed
sealed class Resource<F, T> with _$Resource<F, T> {
  /// Private constructor required to allow custom getters and methods.
  const Resource._();

  /// Creates a [Resource] instance in its initial/idle state.
  const factory Resource.none() = ResourceNone<F, T>;

  /// Creates a [Resource] instance representing an active loading state.
  const factory Resource.loading() = ResourceLoading<F, T>;

  /// Creates a successful [Resource] instance holding the given [value].
  const factory Resource.success(T value) = ResourceSuccess<F, T>;

  /// Creates a failed [Resource] instance holding the given [failure] detail.
  const factory Resource.failure(F failure) = ResourceFailure<F, T>;

  /// Whether the current state is idle/none ([ResourceNone]).
  bool get isNone => this is ResourceNone<F, T>;

  /// Whether the resource is currently loading ([ResourceLoading]).
  bool get isLoading => this is ResourceLoading<F, T>;

  /// Whether the resource fetch completed successfully ([ResourceSuccess]).
  bool get isSuccess => this is ResourceSuccess<F, T>;

  /// Whether the resource fetch resulted in a failure ([ResourceFailure]).
  bool get isFailure => this is ResourceFailure<F, T>;

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
}
