// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nif_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NifFailure {

 String get code;
/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NifFailureCopyWith<NifFailure> get copyWith => _$NifFailureCopyWithImpl<NifFailure>(this as NifFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NifFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NifFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as NifFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as NifFailure;
  return 'NifFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $NifFailureCopyWith<$Res>  {
  factory $NifFailureCopyWith(NifFailure value, $Res Function(NifFailure) _then) = _$NifFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$NifFailureCopyWithImpl<$Res>
    implements $NifFailureCopyWith<$Res> {
  _$NifFailureCopyWithImpl(this._self, this._then);

  final NifFailure _self;
  final $Res Function(NifFailure) _then;

/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NifFailure].
extension NifFailurePatterns on NifFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NifFailureEmpty value)?  empty,TResult Function( NifFailureInvalid value)?  invalid,TResult Function( NifFailureTooLong value)?  tooLong,TResult Function( NifFailureTooShort value)?  tooShort,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NifFailureEmpty() when empty != null:
return empty(_that);case NifFailureInvalid() when invalid != null:
return invalid(_that);case NifFailureTooLong() when tooLong != null:
return tooLong(_that);case NifFailureTooShort() when tooShort != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NifFailureEmpty value)  empty,required TResult Function( NifFailureInvalid value)  invalid,required TResult Function( NifFailureTooLong value)  tooLong,required TResult Function( NifFailureTooShort value)  tooShort,}){
final _that = this;
switch (_that) {
case NifFailureEmpty():
return empty(_that);case NifFailureInvalid():
return invalid(_that);case NifFailureTooLong():
return tooLong(_that);case NifFailureTooShort():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NifFailureEmpty value)?  empty,TResult? Function( NifFailureInvalid value)?  invalid,TResult? Function( NifFailureTooLong value)?  tooLong,TResult? Function( NifFailureTooShort value)?  tooShort,}){
final _that = this;
switch (_that) {
case NifFailureEmpty() when empty != null:
return empty(_that);case NifFailureInvalid() when invalid != null:
return invalid(_that);case NifFailureTooLong() when tooLong != null:
return tooLong(_that);case NifFailureTooShort() when tooShort != null:
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
case NifFailureEmpty() when empty != null:
return empty(_that.code);case NifFailureInvalid() when invalid != null:
return invalid(_that.code);case NifFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case NifFailureTooShort() when tooShort != null:
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
case NifFailureEmpty():
return empty(_that.code);case NifFailureInvalid():
return invalid(_that.code);case NifFailureTooLong():
return tooLong(_that.code,_that.length);case NifFailureTooShort():
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
case NifFailureEmpty() when empty != null:
return empty(_that.code);case NifFailureInvalid() when invalid != null:
return invalid(_that.code);case NifFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case NifFailureTooShort() when tooShort != null:
return tooShort(_that.code,_that.length);case _:
  return null;

}
}

}

/// @nodoc


class NifFailureEmpty extends NifFailure {
  const NifFailureEmpty({this.code = 'empty'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NifFailureEmptyCopyWith<NifFailureEmpty> get copyWith => _$NifFailureEmptyCopyWithImpl<NifFailureEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NifFailureEmpty&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'NifFailure.empty(code: $code)';
}


}

/// @nodoc
abstract mixin class $NifFailureEmptyCopyWith<$Res> implements $NifFailureCopyWith<$Res> {
  factory $NifFailureEmptyCopyWith(NifFailureEmpty value, $Res Function(NifFailureEmpty) _then) = _$NifFailureEmptyCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$NifFailureEmptyCopyWithImpl<$Res>
    implements $NifFailureEmptyCopyWith<$Res> {
  _$NifFailureEmptyCopyWithImpl(this._self, this._then);

  final NifFailureEmpty _self;
  final $Res Function(NifFailureEmpty) _then;

/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(NifFailureEmpty(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NifFailureInvalid extends NifFailure {
  const NifFailureInvalid({this.code = 'invalid'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NifFailureInvalidCopyWith<NifFailureInvalid> get copyWith => _$NifFailureInvalidCopyWithImpl<NifFailureInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NifFailureInvalid&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'NifFailure.invalid(code: $code)';
}


}

/// @nodoc
abstract mixin class $NifFailureInvalidCopyWith<$Res> implements $NifFailureCopyWith<$Res> {
  factory $NifFailureInvalidCopyWith(NifFailureInvalid value, $Res Function(NifFailureInvalid) _then) = _$NifFailureInvalidCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$NifFailureInvalidCopyWithImpl<$Res>
    implements $NifFailureInvalidCopyWith<$Res> {
  _$NifFailureInvalidCopyWithImpl(this._self, this._then);

  final NifFailureInvalid _self;
  final $Res Function(NifFailureInvalid) _then;

/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(NifFailureInvalid(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NifFailureTooLong extends NifFailure {
  const NifFailureTooLong({this.code = 'tooLong', this.length = 9}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NifFailureTooLongCopyWith<NifFailureTooLong> get copyWith => _$NifFailureTooLongCopyWithImpl<NifFailureTooLong>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NifFailureTooLong&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'NifFailure.tooLong(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $NifFailureTooLongCopyWith<$Res> implements $NifFailureCopyWith<$Res> {
  factory $NifFailureTooLongCopyWith(NifFailureTooLong value, $Res Function(NifFailureTooLong) _then) = _$NifFailureTooLongCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$NifFailureTooLongCopyWithImpl<$Res>
    implements $NifFailureTooLongCopyWith<$Res> {
  _$NifFailureTooLongCopyWithImpl(this._self, this._then);

  final NifFailureTooLong _self;
  final $Res Function(NifFailureTooLong) _then;

/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(NifFailureTooLong(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class NifFailureTooShort extends NifFailure {
  const NifFailureTooShort({this.code = 'tooShort', this.length = 9}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NifFailureTooShortCopyWith<NifFailureTooShort> get copyWith => _$NifFailureTooShortCopyWithImpl<NifFailureTooShort>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NifFailureTooShort&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'NifFailure.tooShort(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $NifFailureTooShortCopyWith<$Res> implements $NifFailureCopyWith<$Res> {
  factory $NifFailureTooShortCopyWith(NifFailureTooShort value, $Res Function(NifFailureTooShort) _then) = _$NifFailureTooShortCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$NifFailureTooShortCopyWithImpl<$Res>
    implements $NifFailureTooShortCopyWith<$Res> {
  _$NifFailureTooShortCopyWithImpl(this._self, this._then);

  final NifFailureTooShort _self;
  final $Res Function(NifFailureTooShort) _then;

/// Create a copy of NifFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(NifFailureTooShort(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
