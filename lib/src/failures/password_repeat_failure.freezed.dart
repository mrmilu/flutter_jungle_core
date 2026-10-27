// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_repeat_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PasswordRepeatFailure {

 String get code;
/// Create a copy of PasswordRepeatFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordRepeatFailureCopyWith<PasswordRepeatFailure> get copyWith => _$PasswordRepeatFailureCopyWithImpl<PasswordRepeatFailure>(this as PasswordRepeatFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PasswordRepeatFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordRepeatFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as PasswordRepeatFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as PasswordRepeatFailure;
  return 'PasswordRepeatFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $PasswordRepeatFailureCopyWith<$Res>  {
  factory $PasswordRepeatFailureCopyWith(PasswordRepeatFailure value, $Res Function(PasswordRepeatFailure) _then) = _$PasswordRepeatFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PasswordRepeatFailureCopyWithImpl<$Res>
    implements $PasswordRepeatFailureCopyWith<$Res> {
  _$PasswordRepeatFailureCopyWithImpl(this._self, this._then);

  final PasswordRepeatFailure _self;
  final $Res Function(PasswordRepeatFailure) _then;

/// Create a copy of PasswordRepeatFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(PasswordRepeatFailure.mismatched(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PasswordRepeatFailure].
extension PasswordRepeatFailurePatterns on PasswordRepeatFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PasswordRepeatFailureMismatched value)?  mismatched,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PasswordRepeatFailureMismatched() when mismatched != null:
return mismatched(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PasswordRepeatFailureMismatched value)  mismatched,}){
final _that = this;
switch (_that) {
case PasswordRepeatFailureMismatched():
return mismatched(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PasswordRepeatFailureMismatched value)?  mismatched,}){
final _that = this;
switch (_that) {
case PasswordRepeatFailureMismatched() when mismatched != null:
return mismatched(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code)?  mismatched,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PasswordRepeatFailureMismatched() when mismatched != null:
return mismatched(_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code)  mismatched,}) {final _that = this;
switch (_that) {
case PasswordRepeatFailureMismatched():
return mismatched(_that.code);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code)?  mismatched,}) {final _that = this;
switch (_that) {
case PasswordRepeatFailureMismatched() when mismatched != null:
return mismatched(_that.code);case _:
  return null;

}
}

}

/// @nodoc


class PasswordRepeatFailureMismatched implements PasswordRepeatFailure {
  const PasswordRepeatFailureMismatched({this.code = 'mismatched'});
  

@override@JsonKey() final  String code;

/// Create a copy of PasswordRepeatFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordRepeatFailureMismatchedCopyWith<PasswordRepeatFailureMismatched> get copyWith => _$PasswordRepeatFailureMismatchedCopyWithImpl<PasswordRepeatFailureMismatched>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordRepeatFailureMismatched&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'PasswordRepeatFailure.mismatched(code: $code)';
}


}

/// @nodoc
abstract mixin class $PasswordRepeatFailureMismatchedCopyWith<$Res> implements $PasswordRepeatFailureCopyWith<$Res> {
  factory $PasswordRepeatFailureMismatchedCopyWith(PasswordRepeatFailureMismatched value, $Res Function(PasswordRepeatFailureMismatched) _then) = _$PasswordRepeatFailureMismatchedCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PasswordRepeatFailureMismatchedCopyWithImpl<$Res>
    implements $PasswordRepeatFailureMismatchedCopyWith<$Res> {
  _$PasswordRepeatFailureMismatchedCopyWithImpl(this._self, this._then);

  final PasswordRepeatFailureMismatched _self;
  final $Res Function(PasswordRepeatFailureMismatched) _then;

/// Create a copy of PasswordRepeatFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(PasswordRepeatFailureMismatched(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
