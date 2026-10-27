// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_or.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResultOr<F> {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultOr<F>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ResultOr<$F>()';
}


}

/// @nodoc
class $ResultOrCopyWith<F,$Res>  {
$ResultOrCopyWith(ResultOr<F> _, $Res Function(ResultOr<F>) __);
}


/// Adds pattern-matching-related methods to [ResultOr].
extension ResultOrPatterns<F> on ResultOr<F> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResultOrNone<F> value)?  none,TResult Function( ResultOrLoading<F> value)?  loading,TResult Function( ResultOrSuccess<F> value)?  success,TResult Function( ResultOrFailure<F> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResultOrNone() when none != null:
return none(_that);case ResultOrLoading() when loading != null:
return loading(_that);case ResultOrSuccess() when success != null:
return success(_that);case ResultOrFailure() when failure != null:
return failure(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResultOrNone<F> value)  none,required TResult Function( ResultOrLoading<F> value)  loading,required TResult Function( ResultOrSuccess<F> value)  success,required TResult Function( ResultOrFailure<F> value)  failure,}){
final _that = this;
switch (_that) {
case ResultOrNone():
return none(_that);case ResultOrLoading():
return loading(_that);case ResultOrSuccess():
return success(_that);case ResultOrFailure():
return failure(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResultOrNone<F> value)?  none,TResult? Function( ResultOrLoading<F> value)?  loading,TResult? Function( ResultOrSuccess<F> value)?  success,TResult? Function( ResultOrFailure<F> value)?  failure,}){
final _that = this;
switch (_that) {
case ResultOrNone() when none != null:
return none(_that);case ResultOrLoading() when loading != null:
return loading(_that);case ResultOrSuccess() when success != null:
return success(_that);case ResultOrFailure() when failure != null:
return failure(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function()?  loading,TResult Function()?  success,TResult Function( F failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResultOrNone() when none != null:
return none();case ResultOrLoading() when loading != null:
return loading();case ResultOrSuccess() when success != null:
return success();case ResultOrFailure() when failure != null:
return failure(_that.failure);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function()  loading,required TResult Function()  success,required TResult Function( F failure)  failure,}) {final _that = this;
switch (_that) {
case ResultOrNone():
return none();case ResultOrLoading():
return loading();case ResultOrSuccess():
return success();case ResultOrFailure():
return failure(_that.failure);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( F failure)?  failure,}) {final _that = this;
switch (_that) {
case ResultOrNone() when none != null:
return none();case ResultOrLoading() when loading != null:
return loading();case ResultOrSuccess() when success != null:
return success();case ResultOrFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class ResultOrNone<F> extends ResultOr<F> {
  const ResultOrNone(): super._();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultOrNone<F>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ResultOr<$F>.none()';
}


}




/// @nodoc


class ResultOrLoading<F> extends ResultOr<F> {
  const ResultOrLoading(): super._();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultOrLoading<F>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ResultOr<$F>.loading()';
}


}




/// @nodoc


class ResultOrSuccess<F> extends ResultOr<F> {
  const ResultOrSuccess(): super._();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultOrSuccess<F>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ResultOr<$F>.success()';
}


}




/// @nodoc


class ResultOrFailure<F> extends ResultOr<F> {
  const ResultOrFailure(this.failure): super._();
  

 final  F failure;

/// Create a copy of ResultOr
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResultOrFailureCopyWith<F, ResultOrFailure<F>> get copyWith => _$ResultOrFailureCopyWithImpl<F, ResultOrFailure<F>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResultOrFailure<F>&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(failure));
}

@override
String toString() {
    return 'ResultOr<$F>.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ResultOrFailureCopyWith<F,$Res> implements $ResultOrCopyWith<F, $Res> {
  factory $ResultOrFailureCopyWith(ResultOrFailure<F> value, $Res Function(ResultOrFailure<F>) _then) = _$ResultOrFailureCopyWithImpl;
@useResult
$Res call({
 F failure
});




}
/// @nodoc
class _$ResultOrFailureCopyWithImpl<F,$Res>
    implements $ResultOrFailureCopyWith<F, $Res> {
  _$ResultOrFailureCopyWithImpl(this._self, this._then);

  final ResultOrFailure<F> _self;
  final $Res Function(ResultOrFailure<F>) _then;

/// Create a copy of ResultOr
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = freezed,}) {
  return _then(ResultOrFailure<F>(
freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as F,
  ));
}


}

// dart format on
