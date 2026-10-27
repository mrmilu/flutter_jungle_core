// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'iban_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IbanFailure {

 String get code;
/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbanFailureCopyWith<IbanFailure> get copyWith => _$IbanFailureCopyWithImpl<IbanFailure>(this as IbanFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as IbanFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IbanFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as IbanFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as IbanFailure;
  return 'IbanFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $IbanFailureCopyWith<$Res>  {
  factory $IbanFailureCopyWith(IbanFailure value, $Res Function(IbanFailure) _then) = _$IbanFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$IbanFailureCopyWithImpl<$Res>
    implements $IbanFailureCopyWith<$Res> {
  _$IbanFailureCopyWithImpl(this._self, this._then);

  final IbanFailure _self;
  final $Res Function(IbanFailure) _then;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IbanFailure].
extension IbanFailurePatterns on IbanFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( IbanFailureEmpty value)?  empty,TResult Function( IbanFailureInvalid value)?  invalid,TResult Function( IbanFailureTooLong value)?  tooLong,TResult Function( IbanFailureTooShort value)?  tooShort,TResult Function( IbanFailureInvalidFormat value)?  invalidFormat,TResult Function( IbanFailureInvalidChecksum value)?  invalidChecksum,required TResult orElse(),}){
final _that = this;
switch (_that) {
case IbanFailureEmpty() when empty != null:
return empty(_that);case IbanFailureInvalid() when invalid != null:
return invalid(_that);case IbanFailureTooLong() when tooLong != null:
return tooLong(_that);case IbanFailureTooShort() when tooShort != null:
return tooShort(_that);case IbanFailureInvalidFormat() when invalidFormat != null:
return invalidFormat(_that);case IbanFailureInvalidChecksum() when invalidChecksum != null:
return invalidChecksum(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( IbanFailureEmpty value)  empty,required TResult Function( IbanFailureInvalid value)  invalid,required TResult Function( IbanFailureTooLong value)  tooLong,required TResult Function( IbanFailureTooShort value)  tooShort,required TResult Function( IbanFailureInvalidFormat value)  invalidFormat,required TResult Function( IbanFailureInvalidChecksum value)  invalidChecksum,}){
final _that = this;
switch (_that) {
case IbanFailureEmpty():
return empty(_that);case IbanFailureInvalid():
return invalid(_that);case IbanFailureTooLong():
return tooLong(_that);case IbanFailureTooShort():
return tooShort(_that);case IbanFailureInvalidFormat():
return invalidFormat(_that);case IbanFailureInvalidChecksum():
return invalidChecksum(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( IbanFailureEmpty value)?  empty,TResult? Function( IbanFailureInvalid value)?  invalid,TResult? Function( IbanFailureTooLong value)?  tooLong,TResult? Function( IbanFailureTooShort value)?  tooShort,TResult? Function( IbanFailureInvalidFormat value)?  invalidFormat,TResult? Function( IbanFailureInvalidChecksum value)?  invalidChecksum,}){
final _that = this;
switch (_that) {
case IbanFailureEmpty() when empty != null:
return empty(_that);case IbanFailureInvalid() when invalid != null:
return invalid(_that);case IbanFailureTooLong() when tooLong != null:
return tooLong(_that);case IbanFailureTooShort() when tooShort != null:
return tooShort(_that);case IbanFailureInvalidFormat() when invalidFormat != null:
return invalidFormat(_that);case IbanFailureInvalidChecksum() when invalidChecksum != null:
return invalidChecksum(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code)?  empty,TResult Function( String code)?  invalid,TResult Function( String code,  int length)?  tooLong,TResult Function( String code,  int length)?  tooShort,TResult Function( String code)?  invalidFormat,TResult Function( String code)?  invalidChecksum,required TResult orElse(),}) {final _that = this;
switch (_that) {
case IbanFailureEmpty() when empty != null:
return empty(_that.code);case IbanFailureInvalid() when invalid != null:
return invalid(_that.code);case IbanFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case IbanFailureTooShort() when tooShort != null:
return tooShort(_that.code,_that.length);case IbanFailureInvalidFormat() when invalidFormat != null:
return invalidFormat(_that.code);case IbanFailureInvalidChecksum() when invalidChecksum != null:
return invalidChecksum(_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code)  empty,required TResult Function( String code)  invalid,required TResult Function( String code,  int length)  tooLong,required TResult Function( String code,  int length)  tooShort,required TResult Function( String code)  invalidFormat,required TResult Function( String code)  invalidChecksum,}) {final _that = this;
switch (_that) {
case IbanFailureEmpty():
return empty(_that.code);case IbanFailureInvalid():
return invalid(_that.code);case IbanFailureTooLong():
return tooLong(_that.code,_that.length);case IbanFailureTooShort():
return tooShort(_that.code,_that.length);case IbanFailureInvalidFormat():
return invalidFormat(_that.code);case IbanFailureInvalidChecksum():
return invalidChecksum(_that.code);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code)?  empty,TResult? Function( String code)?  invalid,TResult? Function( String code,  int length)?  tooLong,TResult? Function( String code,  int length)?  tooShort,TResult? Function( String code)?  invalidFormat,TResult? Function( String code)?  invalidChecksum,}) {final _that = this;
switch (_that) {
case IbanFailureEmpty() when empty != null:
return empty(_that.code);case IbanFailureInvalid() when invalid != null:
return invalid(_that.code);case IbanFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case IbanFailureTooShort() when tooShort != null:
return tooShort(_that.code,_that.length);case IbanFailureInvalidFormat() when invalidFormat != null:
return invalidFormat(_that.code);case IbanFailureInvalidChecksum() when invalidChecksum != null:
return invalidChecksum(_that.code);case _:
  return null;

}
}

}

/// @nodoc


class IbanFailureEmpty extends IbanFailure {
  const IbanFailureEmpty({this.code = 'empty'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbanFailureEmptyCopyWith<IbanFailureEmpty> get copyWith => _$IbanFailureEmptyCopyWithImpl<IbanFailureEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is IbanFailureEmpty&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'IbanFailure.empty(code: $code)';
}


}

/// @nodoc
abstract mixin class $IbanFailureEmptyCopyWith<$Res> implements $IbanFailureCopyWith<$Res> {
  factory $IbanFailureEmptyCopyWith(IbanFailureEmpty value, $Res Function(IbanFailureEmpty) _then) = _$IbanFailureEmptyCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$IbanFailureEmptyCopyWithImpl<$Res>
    implements $IbanFailureEmptyCopyWith<$Res> {
  _$IbanFailureEmptyCopyWithImpl(this._self, this._then);

  final IbanFailureEmpty _self;
  final $Res Function(IbanFailureEmpty) _then;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(IbanFailureEmpty(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class IbanFailureInvalid extends IbanFailure {
  const IbanFailureInvalid({this.code = 'invalid'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbanFailureInvalidCopyWith<IbanFailureInvalid> get copyWith => _$IbanFailureInvalidCopyWithImpl<IbanFailureInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is IbanFailureInvalid&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'IbanFailure.invalid(code: $code)';
}


}

/// @nodoc
abstract mixin class $IbanFailureInvalidCopyWith<$Res> implements $IbanFailureCopyWith<$Res> {
  factory $IbanFailureInvalidCopyWith(IbanFailureInvalid value, $Res Function(IbanFailureInvalid) _then) = _$IbanFailureInvalidCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$IbanFailureInvalidCopyWithImpl<$Res>
    implements $IbanFailureInvalidCopyWith<$Res> {
  _$IbanFailureInvalidCopyWithImpl(this._self, this._then);

  final IbanFailureInvalid _self;
  final $Res Function(IbanFailureInvalid) _then;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(IbanFailureInvalid(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class IbanFailureTooLong extends IbanFailure {
  const IbanFailureTooLong({this.code = 'tooLong', this.length = 24}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbanFailureTooLongCopyWith<IbanFailureTooLong> get copyWith => _$IbanFailureTooLongCopyWithImpl<IbanFailureTooLong>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is IbanFailureTooLong&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'IbanFailure.tooLong(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $IbanFailureTooLongCopyWith<$Res> implements $IbanFailureCopyWith<$Res> {
  factory $IbanFailureTooLongCopyWith(IbanFailureTooLong value, $Res Function(IbanFailureTooLong) _then) = _$IbanFailureTooLongCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$IbanFailureTooLongCopyWithImpl<$Res>
    implements $IbanFailureTooLongCopyWith<$Res> {
  _$IbanFailureTooLongCopyWithImpl(this._self, this._then);

  final IbanFailureTooLong _self;
  final $Res Function(IbanFailureTooLong) _then;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(IbanFailureTooLong(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class IbanFailureTooShort extends IbanFailure {
  const IbanFailureTooShort({this.code = 'tooShort', this.length = 24}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbanFailureTooShortCopyWith<IbanFailureTooShort> get copyWith => _$IbanFailureTooShortCopyWithImpl<IbanFailureTooShort>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is IbanFailureTooShort&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'IbanFailure.tooShort(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $IbanFailureTooShortCopyWith<$Res> implements $IbanFailureCopyWith<$Res> {
  factory $IbanFailureTooShortCopyWith(IbanFailureTooShort value, $Res Function(IbanFailureTooShort) _then) = _$IbanFailureTooShortCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$IbanFailureTooShortCopyWithImpl<$Res>
    implements $IbanFailureTooShortCopyWith<$Res> {
  _$IbanFailureTooShortCopyWithImpl(this._self, this._then);

  final IbanFailureTooShort _self;
  final $Res Function(IbanFailureTooShort) _then;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(IbanFailureTooShort(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class IbanFailureInvalidFormat extends IbanFailure {
  const IbanFailureInvalidFormat({this.code = 'invalidFormat'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbanFailureInvalidFormatCopyWith<IbanFailureInvalidFormat> get copyWith => _$IbanFailureInvalidFormatCopyWithImpl<IbanFailureInvalidFormat>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is IbanFailureInvalidFormat&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'IbanFailure.invalidFormat(code: $code)';
}


}

/// @nodoc
abstract mixin class $IbanFailureInvalidFormatCopyWith<$Res> implements $IbanFailureCopyWith<$Res> {
  factory $IbanFailureInvalidFormatCopyWith(IbanFailureInvalidFormat value, $Res Function(IbanFailureInvalidFormat) _then) = _$IbanFailureInvalidFormatCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$IbanFailureInvalidFormatCopyWithImpl<$Res>
    implements $IbanFailureInvalidFormatCopyWith<$Res> {
  _$IbanFailureInvalidFormatCopyWithImpl(this._self, this._then);

  final IbanFailureInvalidFormat _self;
  final $Res Function(IbanFailureInvalidFormat) _then;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(IbanFailureInvalidFormat(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class IbanFailureInvalidChecksum extends IbanFailure {
  const IbanFailureInvalidChecksum({this.code = 'invalidChecksum'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IbanFailureInvalidChecksumCopyWith<IbanFailureInvalidChecksum> get copyWith => _$IbanFailureInvalidChecksumCopyWithImpl<IbanFailureInvalidChecksum>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is IbanFailureInvalidChecksum&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'IbanFailure.invalidChecksum(code: $code)';
}


}

/// @nodoc
abstract mixin class $IbanFailureInvalidChecksumCopyWith<$Res> implements $IbanFailureCopyWith<$Res> {
  factory $IbanFailureInvalidChecksumCopyWith(IbanFailureInvalidChecksum value, $Res Function(IbanFailureInvalidChecksum) _then) = _$IbanFailureInvalidChecksumCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$IbanFailureInvalidChecksumCopyWithImpl<$Res>
    implements $IbanFailureInvalidChecksumCopyWith<$Res> {
  _$IbanFailureInvalidChecksumCopyWithImpl(this._self, this._then);

  final IbanFailureInvalidChecksum _self;
  final $Res Function(IbanFailureInvalidChecksum) _then;

/// Create a copy of IbanFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(IbanFailureInvalidChecksum(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
