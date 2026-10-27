// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PhoneFailure {

 String get code;
/// Create a copy of PhoneFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneFailureCopyWith<PhoneFailure> get copyWith => _$PhoneFailureCopyWithImpl<PhoneFailure>(this as PhoneFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PhoneFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as PhoneFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as PhoneFailure;
  return 'PhoneFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $PhoneFailureCopyWith<$Res>  {
  factory $PhoneFailureCopyWith(PhoneFailure value, $Res Function(PhoneFailure) _then) = _$PhoneFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PhoneFailureCopyWithImpl<$Res>
    implements $PhoneFailureCopyWith<$Res> {
  _$PhoneFailureCopyWithImpl(this._self, this._then);

  final PhoneFailure _self;
  final $Res Function(PhoneFailure) _then;

/// Create a copy of PhoneFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PhoneFailure].
extension PhoneFailurePatterns on PhoneFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PhoneFailureEmpty value)?  empty,TResult Function( PhoneFailureInvalid value)?  invalid,TResult Function( PhoneFailureTooLong value)?  tooLong,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PhoneFailureEmpty() when empty != null:
return empty(_that);case PhoneFailureInvalid() when invalid != null:
return invalid(_that);case PhoneFailureTooLong() when tooLong != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PhoneFailureEmpty value)  empty,required TResult Function( PhoneFailureInvalid value)  invalid,required TResult Function( PhoneFailureTooLong value)  tooLong,}){
final _that = this;
switch (_that) {
case PhoneFailureEmpty():
return empty(_that);case PhoneFailureInvalid():
return invalid(_that);case PhoneFailureTooLong():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PhoneFailureEmpty value)?  empty,TResult? Function( PhoneFailureInvalid value)?  invalid,TResult? Function( PhoneFailureTooLong value)?  tooLong,}){
final _that = this;
switch (_that) {
case PhoneFailureEmpty() when empty != null:
return empty(_that);case PhoneFailureInvalid() when invalid != null:
return invalid(_that);case PhoneFailureTooLong() when tooLong != null:
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
case PhoneFailureEmpty() when empty != null:
return empty(_that.code);case PhoneFailureInvalid() when invalid != null:
return invalid(_that.code);case PhoneFailureTooLong() when tooLong != null:
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
case PhoneFailureEmpty():
return empty(_that.code);case PhoneFailureInvalid():
return invalid(_that.code);case PhoneFailureTooLong():
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
case PhoneFailureEmpty() when empty != null:
return empty(_that.code);case PhoneFailureInvalid() when invalid != null:
return invalid(_that.code);case PhoneFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case _:
  return null;

}
}

}

/// @nodoc


class PhoneFailureEmpty extends PhoneFailure {
  const PhoneFailureEmpty({this.code = 'empty'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of PhoneFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneFailureEmptyCopyWith<PhoneFailureEmpty> get copyWith => _$PhoneFailureEmptyCopyWithImpl<PhoneFailureEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneFailureEmpty&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'PhoneFailure.empty(code: $code)';
}


}

/// @nodoc
abstract mixin class $PhoneFailureEmptyCopyWith<$Res> implements $PhoneFailureCopyWith<$Res> {
  factory $PhoneFailureEmptyCopyWith(PhoneFailureEmpty value, $Res Function(PhoneFailureEmpty) _then) = _$PhoneFailureEmptyCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PhoneFailureEmptyCopyWithImpl<$Res>
    implements $PhoneFailureEmptyCopyWith<$Res> {
  _$PhoneFailureEmptyCopyWithImpl(this._self, this._then);

  final PhoneFailureEmpty _self;
  final $Res Function(PhoneFailureEmpty) _then;

/// Create a copy of PhoneFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(PhoneFailureEmpty(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PhoneFailureInvalid extends PhoneFailure {
  const PhoneFailureInvalid({this.code = 'invalid'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of PhoneFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneFailureInvalidCopyWith<PhoneFailureInvalid> get copyWith => _$PhoneFailureInvalidCopyWithImpl<PhoneFailureInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneFailureInvalid&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'PhoneFailure.invalid(code: $code)';
}


}

/// @nodoc
abstract mixin class $PhoneFailureInvalidCopyWith<$Res> implements $PhoneFailureCopyWith<$Res> {
  factory $PhoneFailureInvalidCopyWith(PhoneFailureInvalid value, $Res Function(PhoneFailureInvalid) _then) = _$PhoneFailureInvalidCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PhoneFailureInvalidCopyWithImpl<$Res>
    implements $PhoneFailureInvalidCopyWith<$Res> {
  _$PhoneFailureInvalidCopyWithImpl(this._self, this._then);

  final PhoneFailureInvalid _self;
  final $Res Function(PhoneFailureInvalid) _then;

/// Create a copy of PhoneFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(PhoneFailureInvalid(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PhoneFailureTooLong extends PhoneFailure {
  const PhoneFailureTooLong({this.code = 'tooLong', this.length = 11}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of PhoneFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneFailureTooLongCopyWith<PhoneFailureTooLong> get copyWith => _$PhoneFailureTooLongCopyWithImpl<PhoneFailureTooLong>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneFailureTooLong&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'PhoneFailure.tooLong(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $PhoneFailureTooLongCopyWith<$Res> implements $PhoneFailureCopyWith<$Res> {
  factory $PhoneFailureTooLongCopyWith(PhoneFailureTooLong value, $Res Function(PhoneFailureTooLong) _then) = _$PhoneFailureTooLongCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$PhoneFailureTooLongCopyWithImpl<$Res>
    implements $PhoneFailureTooLongCopyWith<$Res> {
  _$PhoneFailureTooLongCopyWithImpl(this._self, this._then);

  final PhoneFailureTooLong _self;
  final $Res Function(PhoneFailureTooLong) _then;

/// Create a copy of PhoneFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(PhoneFailureTooLong(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
