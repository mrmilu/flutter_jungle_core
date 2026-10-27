// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Resource<F,T> {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is Resource<F, T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'Resource<$F, $T>()';
}


}

/// @nodoc
class $ResourceCopyWith<F,T,$Res>  {
$ResourceCopyWith(Resource<F, T> _, $Res Function(Resource<F, T>) __);
}


/// Adds pattern-matching-related methods to [Resource].
extension ResourcePatterns<F,T> on Resource<F, T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ResourceNone<F, T> value)?  none,TResult Function( ResourceLoading<F, T> value)?  loading,TResult Function( ResourceSuccess<F, T> value)?  success,TResult Function( ResourceFailure<F, T> value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ResourceNone() when none != null:
return none(_that);case ResourceLoading() when loading != null:
return loading(_that);case ResourceSuccess() when success != null:
return success(_that);case ResourceFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ResourceNone<F, T> value)  none,required TResult Function( ResourceLoading<F, T> value)  loading,required TResult Function( ResourceSuccess<F, T> value)  success,required TResult Function( ResourceFailure<F, T> value)  failure,}){
final _that = this;
switch (_that) {
case ResourceNone():
return none(_that);case ResourceLoading():
return loading(_that);case ResourceSuccess():
return success(_that);case ResourceFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ResourceNone<F, T> value)?  none,TResult? Function( ResourceLoading<F, T> value)?  loading,TResult? Function( ResourceSuccess<F, T> value)?  success,TResult? Function( ResourceFailure<F, T> value)?  failure,}){
final _that = this;
switch (_that) {
case ResourceNone() when none != null:
return none(_that);case ResourceLoading() when loading != null:
return loading(_that);case ResourceSuccess() when success != null:
return success(_that);case ResourceFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  none,TResult Function()?  loading,TResult Function( T value)?  success,TResult Function( F failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ResourceNone() when none != null:
return none();case ResourceLoading() when loading != null:
return loading();case ResourceSuccess() when success != null:
return success(_that.value);case ResourceFailure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  none,required TResult Function()  loading,required TResult Function( T value)  success,required TResult Function( F failure)  failure,}) {final _that = this;
switch (_that) {
case ResourceNone():
return none();case ResourceLoading():
return loading();case ResourceSuccess():
return success(_that.value);case ResourceFailure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  none,TResult? Function()?  loading,TResult? Function( T value)?  success,TResult? Function( F failure)?  failure,}) {final _that = this;
switch (_that) {
case ResourceNone() when none != null:
return none();case ResourceLoading() when loading != null:
return loading();case ResourceSuccess() when success != null:
return success(_that.value);case ResourceFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class ResourceNone<F,T> extends Resource<F, T> {
  const ResourceNone(): super._();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceNone<F, T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'Resource<$F, $T>.none()';
}


}




/// @nodoc


class ResourceLoading<F,T> extends Resource<F, T> {
  const ResourceLoading(): super._();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceLoading<F, T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'Resource<$F, $T>.loading()';
}


}




/// @nodoc


class ResourceSuccess<F,T> extends Resource<F, T> {
  const ResourceSuccess(this.value): super._();
  

 final  T value;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResourceSuccessCopyWith<F, T, ResourceSuccess<F, T>> get copyWith => _$ResourceSuccessCopyWithImpl<F, T, ResourceSuccess<F, T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceSuccess<F, T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(value));
}

@override
String toString() {
    return 'Resource<$F, $T>.success(value: $value)';
}


}

/// @nodoc
abstract mixin class $ResourceSuccessCopyWith<F,T,$Res> implements $ResourceCopyWith<F, T, $Res> {
  factory $ResourceSuccessCopyWith(ResourceSuccess<F, T> value, $Res Function(ResourceSuccess<F, T>) _then) = _$ResourceSuccessCopyWithImpl;
@useResult
$Res call({
 T value
});




}
/// @nodoc
class _$ResourceSuccessCopyWithImpl<F,T,$Res>
    implements $ResourceSuccessCopyWith<F, T, $Res> {
  _$ResourceSuccessCopyWithImpl(this._self, this._then);

  final ResourceSuccess<F, T> _self;
  final $Res Function(ResourceSuccess<F, T>) _then;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(ResourceSuccess<F, T>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ResourceFailure<F,T> extends Resource<F, T> {
  const ResourceFailure(this.failure): super._();
  

 final  F failure;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResourceFailureCopyWith<F, T, ResourceFailure<F, T>> get copyWith => _$ResourceFailureCopyWithImpl<F, T, ResourceFailure<F, T>>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceFailure<F, T>&&const DeepCollectionEquality().equals(other.failure, failure));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(failure));
}

@override
String toString() {
    return 'Resource<$F, $T>.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ResourceFailureCopyWith<F,T,$Res> implements $ResourceCopyWith<F, T, $Res> {
  factory $ResourceFailureCopyWith(ResourceFailure<F, T> value, $Res Function(ResourceFailure<F, T>) _then) = _$ResourceFailureCopyWithImpl;
@useResult
$Res call({
 F failure
});




}
/// @nodoc
class _$ResourceFailureCopyWithImpl<F,T,$Res>
    implements $ResourceFailureCopyWith<F, T, $Res> {
  _$ResourceFailureCopyWithImpl(this._self, this._then);

  final ResourceFailure<F, T> _self;
  final $Res Function(ResourceFailure<F, T>) _then;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = freezed,}) {
  return _then(ResourceFailure<F, T>(
freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as F,
  ));
}


}

// dart format on
