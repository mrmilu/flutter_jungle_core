// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nie_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NieFailure {

 String get code;
/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NieFailureCopyWith<NieFailure> get copyWith => _$NieFailureCopyWithImpl<NieFailure>(this as NieFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NieFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NieFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as NieFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as NieFailure;
  return 'NieFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $NieFailureCopyWith<$Res>  {
  factory $NieFailureCopyWith(NieFailure value, $Res Function(NieFailure) _then) = _$NieFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$NieFailureCopyWithImpl<$Res>
    implements $NieFailureCopyWith<$Res> {
  _$NieFailureCopyWithImpl(this._self, this._then);

  final NieFailure _self;
  final $Res Function(NieFailure) _then;

/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NieFailure].
extension NieFailurePatterns on NieFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( NieFailureEmpty value)?  empty,TResult Function( NieFailureInvalid value)?  invalid,TResult Function( NieFailureTooLong value)?  tooLong,TResult Function( NieFailureTooShort value)?  tooShort,required TResult orElse(),}){
final _that = this;
switch (_that) {
case NieFailureEmpty() when empty != null:
return empty(_that);case NieFailureInvalid() when invalid != null:
return invalid(_that);case NieFailureTooLong() when tooLong != null:
return tooLong(_that);case NieFailureTooShort() when tooShort != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( NieFailureEmpty value)  empty,required TResult Function( NieFailureInvalid value)  invalid,required TResult Function( NieFailureTooLong value)  tooLong,required TResult Function( NieFailureTooShort value)  tooShort,}){
final _that = this;
switch (_that) {
case NieFailureEmpty():
return empty(_that);case NieFailureInvalid():
return invalid(_that);case NieFailureTooLong():
return tooLong(_that);case NieFailureTooShort():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( NieFailureEmpty value)?  empty,TResult? Function( NieFailureInvalid value)?  invalid,TResult? Function( NieFailureTooLong value)?  tooLong,TResult? Function( NieFailureTooShort value)?  tooShort,}){
final _that = this;
switch (_that) {
case NieFailureEmpty() when empty != null:
return empty(_that);case NieFailureInvalid() when invalid != null:
return invalid(_that);case NieFailureTooLong() when tooLong != null:
return tooLong(_that);case NieFailureTooShort() when tooShort != null:
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
case NieFailureEmpty() when empty != null:
return empty(_that.code);case NieFailureInvalid() when invalid != null:
return invalid(_that.code);case NieFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case NieFailureTooShort() when tooShort != null:
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
case NieFailureEmpty():
return empty(_that.code);case NieFailureInvalid():
return invalid(_that.code);case NieFailureTooLong():
return tooLong(_that.code,_that.length);case NieFailureTooShort():
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
case NieFailureEmpty() when empty != null:
return empty(_that.code);case NieFailureInvalid() when invalid != null:
return invalid(_that.code);case NieFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case NieFailureTooShort() when tooShort != null:
return tooShort(_that.code,_that.length);case _:
  return null;

}
}

}

/// @nodoc


class NieFailureEmpty extends NieFailure {
  const NieFailureEmpty({this.code = 'empty'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NieFailureEmptyCopyWith<NieFailureEmpty> get copyWith => _$NieFailureEmptyCopyWithImpl<NieFailureEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NieFailureEmpty&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'NieFailure.empty(code: $code)';
}


}

/// @nodoc
abstract mixin class $NieFailureEmptyCopyWith<$Res> implements $NieFailureCopyWith<$Res> {
  factory $NieFailureEmptyCopyWith(NieFailureEmpty value, $Res Function(NieFailureEmpty) _then) = _$NieFailureEmptyCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$NieFailureEmptyCopyWithImpl<$Res>
    implements $NieFailureEmptyCopyWith<$Res> {
  _$NieFailureEmptyCopyWithImpl(this._self, this._then);

  final NieFailureEmpty _self;
  final $Res Function(NieFailureEmpty) _then;

/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(NieFailureEmpty(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NieFailureInvalid extends NieFailure {
  const NieFailureInvalid({this.code = 'invalid'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NieFailureInvalidCopyWith<NieFailureInvalid> get copyWith => _$NieFailureInvalidCopyWithImpl<NieFailureInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NieFailureInvalid&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'NieFailure.invalid(code: $code)';
}


}

/// @nodoc
abstract mixin class $NieFailureInvalidCopyWith<$Res> implements $NieFailureCopyWith<$Res> {
  factory $NieFailureInvalidCopyWith(NieFailureInvalid value, $Res Function(NieFailureInvalid) _then) = _$NieFailureInvalidCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$NieFailureInvalidCopyWithImpl<$Res>
    implements $NieFailureInvalidCopyWith<$Res> {
  _$NieFailureInvalidCopyWithImpl(this._self, this._then);

  final NieFailureInvalid _self;
  final $Res Function(NieFailureInvalid) _then;

/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(NieFailureInvalid(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NieFailureTooLong extends NieFailure {
  const NieFailureTooLong({this.code = 'tooLong', this.length = 9}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NieFailureTooLongCopyWith<NieFailureTooLong> get copyWith => _$NieFailureTooLongCopyWithImpl<NieFailureTooLong>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NieFailureTooLong&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'NieFailure.tooLong(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $NieFailureTooLongCopyWith<$Res> implements $NieFailureCopyWith<$Res> {
  factory $NieFailureTooLongCopyWith(NieFailureTooLong value, $Res Function(NieFailureTooLong) _then) = _$NieFailureTooLongCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$NieFailureTooLongCopyWithImpl<$Res>
    implements $NieFailureTooLongCopyWith<$Res> {
  _$NieFailureTooLongCopyWithImpl(this._self, this._then);

  final NieFailureTooLong _self;
  final $Res Function(NieFailureTooLong) _then;

/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(NieFailureTooLong(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class NieFailureTooShort extends NieFailure {
  const NieFailureTooShort({this.code = 'tooShort', this.length = 9}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NieFailureTooShortCopyWith<NieFailureTooShort> get copyWith => _$NieFailureTooShortCopyWithImpl<NieFailureTooShort>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is NieFailureTooShort&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'NieFailure.tooShort(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $NieFailureTooShortCopyWith<$Res> implements $NieFailureCopyWith<$Res> {
  factory $NieFailureTooShortCopyWith(NieFailureTooShort value, $Res Function(NieFailureTooShort) _then) = _$NieFailureTooShortCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$NieFailureTooShortCopyWithImpl<$Res>
    implements $NieFailureTooShortCopyWith<$Res> {
  _$NieFailureTooShortCopyWithImpl(this._self, this._then);

  final NieFailureTooShort _self;
  final $Res Function(NieFailureTooShort) _then;

/// Create a copy of NieFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(NieFailureTooShort(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
