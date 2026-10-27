// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cif_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CifFailure {

 String get code;
/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CifFailureCopyWith<CifFailure> get copyWith => _$CifFailureCopyWithImpl<CifFailure>(this as CifFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CifFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CifFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as CifFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as CifFailure;
  return 'CifFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $CifFailureCopyWith<$Res>  {
  factory $CifFailureCopyWith(CifFailure value, $Res Function(CifFailure) _then) = _$CifFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$CifFailureCopyWithImpl<$Res>
    implements $CifFailureCopyWith<$Res> {
  _$CifFailureCopyWithImpl(this._self, this._then);

  final CifFailure _self;
  final $Res Function(CifFailure) _then;

/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CifFailure].
extension CifFailurePatterns on CifFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CifFailureEmpty value)?  empty,TResult Function( CifFailureInvalid value)?  invalid,TResult Function( CifFailureTooLong value)?  tooLong,TResult Function( CifFailureTooShort value)?  tooShort,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CifFailureEmpty() when empty != null:
return empty(_that);case CifFailureInvalid() when invalid != null:
return invalid(_that);case CifFailureTooLong() when tooLong != null:
return tooLong(_that);case CifFailureTooShort() when tooShort != null:
return tooShort(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CifFailureEmpty value)  empty,required TResult Function( CifFailureInvalid value)  invalid,required TResult Function( CifFailureTooLong value)  tooLong,required TResult Function( CifFailureTooShort value)  tooShort,}){
final _that = this;
switch (_that) {
case CifFailureEmpty():
return empty(_that);case CifFailureInvalid():
return invalid(_that);case CifFailureTooLong():
return tooLong(_that);case CifFailureTooShort():
return tooShort(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CifFailureEmpty value)?  empty,TResult? Function( CifFailureInvalid value)?  invalid,TResult? Function( CifFailureTooLong value)?  tooLong,TResult? Function( CifFailureTooShort value)?  tooShort,}){
final _that = this;
switch (_that) {
case CifFailureEmpty() when empty != null:
return empty(_that);case CifFailureInvalid() when invalid != null:
return invalid(_that);case CifFailureTooLong() when tooLong != null:
return tooLong(_that);case CifFailureTooShort() when tooShort != null:
return tooShort(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code)?  empty,TResult Function( String code)?  invalid,TResult Function( String code,  int length)?  tooLong,TResult Function( String code,  int length)?  tooShort,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CifFailureEmpty() when empty != null:
return empty(_that.code);case CifFailureInvalid() when invalid != null:
return invalid(_that.code);case CifFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case CifFailureTooShort() when tooShort != null:
return tooShort(_that.code,_that.length);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code)  empty,required TResult Function( String code)  invalid,required TResult Function( String code,  int length)  tooLong,required TResult Function( String code,  int length)  tooShort,}) {final _that = this;
switch (_that) {
case CifFailureEmpty():
return empty(_that.code);case CifFailureInvalid():
return invalid(_that.code);case CifFailureTooLong():
return tooLong(_that.code,_that.length);case CifFailureTooShort():
return tooShort(_that.code,_that.length);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code)?  empty,TResult? Function( String code)?  invalid,TResult? Function( String code,  int length)?  tooLong,TResult? Function( String code,  int length)?  tooShort,}) {final _that = this;
switch (_that) {
case CifFailureEmpty() when empty != null:
return empty(_that.code);case CifFailureInvalid() when invalid != null:
return invalid(_that.code);case CifFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case CifFailureTooShort() when tooShort != null:
return tooShort(_that.code,_that.length);case _:
  return null;

}
}

}

/// @nodoc


class CifFailureEmpty extends CifFailure {
  const CifFailureEmpty({this.code = 'empty'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CifFailureEmptyCopyWith<CifFailureEmpty> get copyWith => _$CifFailureEmptyCopyWithImpl<CifFailureEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CifFailureEmpty&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'CifFailure.empty(code: $code)';
}


}

/// @nodoc
abstract mixin class $CifFailureEmptyCopyWith<$Res> implements $CifFailureCopyWith<$Res> {
  factory $CifFailureEmptyCopyWith(CifFailureEmpty value, $Res Function(CifFailureEmpty) _then) = _$CifFailureEmptyCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$CifFailureEmptyCopyWithImpl<$Res>
    implements $CifFailureEmptyCopyWith<$Res> {
  _$CifFailureEmptyCopyWithImpl(this._self, this._then);

  final CifFailureEmpty _self;
  final $Res Function(CifFailureEmpty) _then;

/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(CifFailureEmpty(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CifFailureInvalid extends CifFailure {
  const CifFailureInvalid({this.code = 'invalid'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CifFailureInvalidCopyWith<CifFailureInvalid> get copyWith => _$CifFailureInvalidCopyWithImpl<CifFailureInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CifFailureInvalid&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'CifFailure.invalid(code: $code)';
}


}

/// @nodoc
abstract mixin class $CifFailureInvalidCopyWith<$Res> implements $CifFailureCopyWith<$Res> {
  factory $CifFailureInvalidCopyWith(CifFailureInvalid value, $Res Function(CifFailureInvalid) _then) = _$CifFailureInvalidCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$CifFailureInvalidCopyWithImpl<$Res>
    implements $CifFailureInvalidCopyWith<$Res> {
  _$CifFailureInvalidCopyWithImpl(this._self, this._then);

  final CifFailureInvalid _self;
  final $Res Function(CifFailureInvalid) _then;

/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(CifFailureInvalid(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CifFailureTooLong extends CifFailure {
  const CifFailureTooLong({this.code = 'tooLong', this.length = 9}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CifFailureTooLongCopyWith<CifFailureTooLong> get copyWith => _$CifFailureTooLongCopyWithImpl<CifFailureTooLong>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CifFailureTooLong&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'CifFailure.tooLong(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $CifFailureTooLongCopyWith<$Res> implements $CifFailureCopyWith<$Res> {
  factory $CifFailureTooLongCopyWith(CifFailureTooLong value, $Res Function(CifFailureTooLong) _then) = _$CifFailureTooLongCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$CifFailureTooLongCopyWithImpl<$Res>
    implements $CifFailureTooLongCopyWith<$Res> {
  _$CifFailureTooLongCopyWithImpl(this._self, this._then);

  final CifFailureTooLong _self;
  final $Res Function(CifFailureTooLong) _then;

/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(CifFailureTooLong(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CifFailureTooShort extends CifFailure {
  const CifFailureTooShort({this.code = 'tooShort', this.length = 9}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CifFailureTooShortCopyWith<CifFailureTooShort> get copyWith => _$CifFailureTooShortCopyWithImpl<CifFailureTooShort>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is CifFailureTooShort&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'CifFailure.tooShort(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $CifFailureTooShortCopyWith<$Res> implements $CifFailureCopyWith<$Res> {
  factory $CifFailureTooShortCopyWith(CifFailureTooShort value, $Res Function(CifFailureTooShort) _then) = _$CifFailureTooShortCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$CifFailureTooShortCopyWithImpl<$Res>
    implements $CifFailureTooShortCopyWith<$Res> {
  _$CifFailureTooShortCopyWithImpl(this._self, this._then);

  final CifFailureTooShort _self;
  final $Res Function(CifFailureTooShort) _then;

/// Create a copy of CifFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(CifFailureTooShort(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
