import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_or.freezed.dart';

/// Represents the result state of an operation that returns no success payload (void),
/// only tracking status and potential failures.
@freezed
sealed class ResultOr<F> with _$ResultOr<F> {
  /// Constructor privado necesario para permitir getters y métodos personalizados.
  const ResultOr._();

  /// Creates a [ResultOr] instance in its initial/idle state.
  const factory ResultOr.none() = ResultOrNone<F>;

  /// Creates a [ResultOr] instance representing an active loading state.
  const factory ResultOr.loading() = ResultOrLoading<F>;

  /// Creates a successful [ResultOr] instance without payload.
  const factory ResultOr.success() = ResultOrSuccess<F>;

  /// Creates a failed [ResultOr] instance holding the given [failure] detail.
  const factory ResultOr.failure(F failure) = ResultOrFailure<F>;

  /// Whether the current state is idle/none ([ResultOrNone]).
  bool get isNone => this is ResultOrNone<F>;

  /// Whether the operation is currently loading ([ResultOrLoading]).
  bool get isLoading => this is ResultOrLoading<F>;

  /// Whether the operation completed successfully ([ResultOrSuccess]).
  bool get isSuccess => this is ResultOrSuccess<F>;

  /// Whether the operation resulted in a failure ([ResultOrFailure]).
  bool get isFailure => this is ResultOrFailure<F>;

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
    if (this is ResultOrSuccess<F>) {
      isSuccess();
    }
  }
}
