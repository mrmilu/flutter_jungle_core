/// A value that can contain either a value of type [L] on the left or a value
/// of type [R] on the right.
///
/// Use [Either.left] and [Either.right] to create a value. Since `null` is used
/// to determine which side is present, the contained value must not be `null`.
/// For example:
///
/// ```dart
/// final Either<String, int> result = Either.right(42);
/// result.when(
///   isLeft: (message) => print('Error: $message'),
///   isRight: (value) => print('Value: $value'),
/// );
/// ```
class Either<L, R> {
  /// The left value, or `null` when this [Either] contains a right value.
  final L? left;

  /// The right value, or `null` when this [Either] contains a left value.
  final R? right;

  Either._(this.left, this.right);

  /// Creates an [Either] from the supplied sides.
  ///
  /// Provide exactly one non-null value. Prefer [Either.left] or
  /// [Either.right] to make the selected side explicit.
  factory Either({L? left, R? right}) => Either._(left, right);

  /// Creates an [Either] containing [right].
  factory Either.right(R right) => Either(right: right);

  /// Creates an [Either] containing [left].
  factory Either.left(L left) => Either(left: left);

  /// Calls the callback for the side that contains a value.
  ///
  /// Calls [isLeft] when [left] is non-null; otherwise calls [isRight].
  void when({
    required void Function(L) isLeft,
    required void Function(R) isRight,
  }) {
    if (left != null) {
      isLeft.call(left as L);
      return;
    }

    isRight.call(right as R);
  }

  void whenIsRight(void Function(R) isRight) {
    if (right == null) return;
    isRight.call(right as R);
  }

  void whenIsLeft(void Function(L) isLeft) {
    if (left == null) return;
    isLeft.call(left as L);
  }

  /// Transforms the contained value by calling the matching callback.
  T map<T>({required T Function(L) isLeft, required T Function(R) isRight}) {
    if (left != null) {
      return isLeft.call(left as L);
    }

    return isRight.call(right as R);
  }

  /// Whether this [Either] contains a left-side value.
  bool isLeft() => left != null;

  /// Whether this [Either] contains a right-side value.
  bool isRight() => right != null;

  /// Returns the right-side value, or computes a fallback from the left value.
  R rightOrElse(R Function(L) orElse) {
    if (right != null) {
      return right!;
    }

    return orElse.call(left as L);
  }

  /// Creates a copy, replacing either side when a non-null value is provided.
  Either<L, R> copyWith({L? left, R? right}) {
    return Either<L, R>(left: left ?? this.left, right: right ?? this.right);
  }

  @override
  String toString() => 'Either(left: $left, right: $right)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Either<L, R> && other.left == left && other.right == right;
  }

  @override
  int get hashCode => left.hashCode ^ right.hashCode;
}

/// Creates an [Either] containing [right].
Either<L, R> right<L, R>(R right) => Either.right(right);

/// Creates an [Either] containing [left].
Either<L, R> left<L, R>(L left) => Either.left(left);
