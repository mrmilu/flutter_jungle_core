// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fullname_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FullnameFailure {

 String get code;
/// Create a copy of FullnameFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullnameFailureCopyWith<FullnameFailure> get copyWith => _$FullnameFailureCopyWithImpl<FullnameFailure>(this as FullnameFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FullnameFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FullnameFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as FullnameFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as FullnameFailure;
  return 'FullnameFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $FullnameFailureCopyWith<$Res>  {
  factory $FullnameFailureCopyWith(FullnameFailure value, $Res Function(FullnameFailure) _then) = _$FullnameFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$FullnameFailureCopyWithImpl<$Res>
    implements $FullnameFailureCopyWith<$Res> {
  _$FullnameFailureCopyWithImpl(this._self, this._then);

  final FullnameFailure _self;
  final $Res Function(FullnameFailure) _then;

/// Create a copy of FullnameFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FullnameFailure].
extension FullnameFailurePatterns on FullnameFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FullnameFailureEmpty value)?  empty,TResult Function( FullnameFailureInvalid value)?  invalid,TResult Function( FullnameFailureTooLong value)?  tooLong,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FullnameFailureEmpty() when empty != null:
return empty(_that);case FullnameFailureInvalid() when invalid != null:
return invalid(_that);case FullnameFailureTooLong() when tooLong != null:
return tooLong(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FullnameFailureEmpty value)  empty,required TResult Function( FullnameFailureInvalid value)  invalid,required TResult Function( FullnameFailureTooLong value)  tooLong,}){
final _that = this;
switch (_that) {
case FullnameFailureEmpty():
return empty(_that);case FullnameFailureInvalid():
return invalid(_that);case FullnameFailureTooLong():
return tooLong(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FullnameFailureEmpty value)?  empty,TResult? Function( FullnameFailureInvalid value)?  invalid,TResult? Function( FullnameFailureTooLong value)?  tooLong,}){
final _that = this;
switch (_that) {
case FullnameFailureEmpty() when empty != null:
return empty(_that);case FullnameFailureInvalid() when invalid != null:
return invalid(_that);case FullnameFailureTooLong() when tooLong != null:
return tooLong(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code)?  empty,TResult Function( String code)?  invalid,TResult Function( String code,  int length)?  tooLong,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FullnameFailureEmpty() when empty != null:
return empty(_that.code);case FullnameFailureInvalid() when invalid != null:
return invalid(_that.code);case FullnameFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code)  empty,required TResult Function( String code)  invalid,required TResult Function( String code,  int length)  tooLong,}) {final _that = this;
switch (_that) {
case FullnameFailureEmpty():
return empty(_that.code);case FullnameFailureInvalid():
return invalid(_that.code);case FullnameFailureTooLong():
return tooLong(_that.code,_that.length);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code)?  empty,TResult? Function( String code)?  invalid,TResult? Function( String code,  int length)?  tooLong,}) {final _that = this;
switch (_that) {
case FullnameFailureEmpty() when empty != null:
return empty(_that.code);case FullnameFailureInvalid() when invalid != null:
return invalid(_that.code);case FullnameFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case _:
  return null;

}
}

}

/// @nodoc


class FullnameFailureEmpty extends FullnameFailure {
  const FullnameFailureEmpty({this.code = 'empty'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of FullnameFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullnameFailureEmptyCopyWith<FullnameFailureEmpty> get copyWith => _$FullnameFailureEmptyCopyWithImpl<FullnameFailureEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FullnameFailureEmpty&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'FullnameFailure.empty(code: $code)';
}


}

/// @nodoc
abstract mixin class $FullnameFailureEmptyCopyWith<$Res> implements $FullnameFailureCopyWith<$Res> {
  factory $FullnameFailureEmptyCopyWith(FullnameFailureEmpty value, $Res Function(FullnameFailureEmpty) _then) = _$FullnameFailureEmptyCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$FullnameFailureEmptyCopyWithImpl<$Res>
    implements $FullnameFailureEmptyCopyWith<$Res> {
  _$FullnameFailureEmptyCopyWithImpl(this._self, this._then);

  final FullnameFailureEmpty _self;
  final $Res Function(FullnameFailureEmpty) _then;

/// Create a copy of FullnameFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(FullnameFailureEmpty(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FullnameFailureInvalid extends FullnameFailure {
  const FullnameFailureInvalid({this.code = 'invalid'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of FullnameFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullnameFailureInvalidCopyWith<FullnameFailureInvalid> get copyWith => _$FullnameFailureInvalidCopyWithImpl<FullnameFailureInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FullnameFailureInvalid&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'FullnameFailure.invalid(code: $code)';
}


}

/// @nodoc
abstract mixin class $FullnameFailureInvalidCopyWith<$Res> implements $FullnameFailureCopyWith<$Res> {
  factory $FullnameFailureInvalidCopyWith(FullnameFailureInvalid value, $Res Function(FullnameFailureInvalid) _then) = _$FullnameFailureInvalidCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$FullnameFailureInvalidCopyWithImpl<$Res>
    implements $FullnameFailureInvalidCopyWith<$Res> {
  _$FullnameFailureInvalidCopyWithImpl(this._self, this._then);

  final FullnameFailureInvalid _self;
  final $Res Function(FullnameFailureInvalid) _then;

/// Create a copy of FullnameFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(FullnameFailureInvalid(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FullnameFailureTooLong extends FullnameFailure {
  const FullnameFailureTooLong({this.code = 'tooLong', this.length = 30}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of FullnameFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FullnameFailureTooLongCopyWith<FullnameFailureTooLong> get copyWith => _$FullnameFailureTooLongCopyWithImpl<FullnameFailureTooLong>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is FullnameFailureTooLong&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'FullnameFailure.tooLong(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $FullnameFailureTooLongCopyWith<$Res> implements $FullnameFailureCopyWith<$Res> {
  factory $FullnameFailureTooLongCopyWith(FullnameFailureTooLong value, $Res Function(FullnameFailureTooLong) _then) = _$FullnameFailureTooLongCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$FullnameFailureTooLongCopyWithImpl<$Res>
    implements $FullnameFailureTooLongCopyWith<$Res> {
  _$FullnameFailureTooLongCopyWithImpl(this._self, this._then);

  final FullnameFailureTooLong _self;
  final $Res Function(FullnameFailureTooLong) _then;

/// Create a copy of FullnameFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(FullnameFailureTooLong(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
