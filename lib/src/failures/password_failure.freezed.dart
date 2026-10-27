// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PasswordFailure {

 String get code;
/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordFailureCopyWith<PasswordFailure> get copyWith => _$PasswordFailureCopyWithImpl<PasswordFailure>(this as PasswordFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PasswordFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as PasswordFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as PasswordFailure;
  return 'PasswordFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $PasswordFailureCopyWith<$Res>  {
  factory $PasswordFailureCopyWith(PasswordFailure value, $Res Function(PasswordFailure) _then) = _$PasswordFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PasswordFailureCopyWithImpl<$Res>
    implements $PasswordFailureCopyWith<$Res> {
  _$PasswordFailureCopyWithImpl(this._self, this._then);

  final PasswordFailure _self;
  final $Res Function(PasswordFailure) _then;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PasswordFailure].
extension PasswordFailurePatterns on PasswordFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PasswordFailureEmpty value)?  empty,TResult Function( PasswordFailureInvalidMinLength value)?  minLength,TResult Function( PasswordFailureIncludeUppercase value)?  includeUppercase,TResult Function( PasswordFailureIncludeLowercase value)?  includeLowercase,TResult Function( PasswordFailureIncludeSpecialCharacter value)?  includeSpecialCharacter,TResult Function( PasswordFailureIncludeDigit value)?  includeDigit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PasswordFailureEmpty() when empty != null:
return empty(_that);case PasswordFailureInvalidMinLength() when minLength != null:
return minLength(_that);case PasswordFailureIncludeUppercase() when includeUppercase != null:
return includeUppercase(_that);case PasswordFailureIncludeLowercase() when includeLowercase != null:
return includeLowercase(_that);case PasswordFailureIncludeSpecialCharacter() when includeSpecialCharacter != null:
return includeSpecialCharacter(_that);case PasswordFailureIncludeDigit() when includeDigit != null:
return includeDigit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PasswordFailureEmpty value)  empty,required TResult Function( PasswordFailureInvalidMinLength value)  minLength,required TResult Function( PasswordFailureIncludeUppercase value)  includeUppercase,required TResult Function( PasswordFailureIncludeLowercase value)  includeLowercase,required TResult Function( PasswordFailureIncludeSpecialCharacter value)  includeSpecialCharacter,required TResult Function( PasswordFailureIncludeDigit value)  includeDigit,}){
final _that = this;
switch (_that) {
case PasswordFailureEmpty():
return empty(_that);case PasswordFailureInvalidMinLength():
return minLength(_that);case PasswordFailureIncludeUppercase():
return includeUppercase(_that);case PasswordFailureIncludeLowercase():
return includeLowercase(_that);case PasswordFailureIncludeSpecialCharacter():
return includeSpecialCharacter(_that);case PasswordFailureIncludeDigit():
return includeDigit(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PasswordFailureEmpty value)?  empty,TResult? Function( PasswordFailureInvalidMinLength value)?  minLength,TResult? Function( PasswordFailureIncludeUppercase value)?  includeUppercase,TResult? Function( PasswordFailureIncludeLowercase value)?  includeLowercase,TResult? Function( PasswordFailureIncludeSpecialCharacter value)?  includeSpecialCharacter,TResult? Function( PasswordFailureIncludeDigit value)?  includeDigit,}){
final _that = this;
switch (_that) {
case PasswordFailureEmpty() when empty != null:
return empty(_that);case PasswordFailureInvalidMinLength() when minLength != null:
return minLength(_that);case PasswordFailureIncludeUppercase() when includeUppercase != null:
return includeUppercase(_that);case PasswordFailureIncludeLowercase() when includeLowercase != null:
return includeLowercase(_that);case PasswordFailureIncludeSpecialCharacter() when includeSpecialCharacter != null:
return includeSpecialCharacter(_that);case PasswordFailureIncludeDigit() when includeDigit != null:
return includeDigit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code)?  empty,TResult Function( String code,  int length)?  minLength,TResult Function( String code)?  includeUppercase,TResult Function( String code)?  includeLowercase,TResult Function( String code)?  includeSpecialCharacter,TResult Function( String code)?  includeDigit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PasswordFailureEmpty() when empty != null:
return empty(_that.code);case PasswordFailureInvalidMinLength() when minLength != null:
return minLength(_that.code,_that.length);case PasswordFailureIncludeUppercase() when includeUppercase != null:
return includeUppercase(_that.code);case PasswordFailureIncludeLowercase() when includeLowercase != null:
return includeLowercase(_that.code);case PasswordFailureIncludeSpecialCharacter() when includeSpecialCharacter != null:
return includeSpecialCharacter(_that.code);case PasswordFailureIncludeDigit() when includeDigit != null:
return includeDigit(_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code)  empty,required TResult Function( String code,  int length)  minLength,required TResult Function( String code)  includeUppercase,required TResult Function( String code)  includeLowercase,required TResult Function( String code)  includeSpecialCharacter,required TResult Function( String code)  includeDigit,}) {final _that = this;
switch (_that) {
case PasswordFailureEmpty():
return empty(_that.code);case PasswordFailureInvalidMinLength():
return minLength(_that.code,_that.length);case PasswordFailureIncludeUppercase():
return includeUppercase(_that.code);case PasswordFailureIncludeLowercase():
return includeLowercase(_that.code);case PasswordFailureIncludeSpecialCharacter():
return includeSpecialCharacter(_that.code);case PasswordFailureIncludeDigit():
return includeDigit(_that.code);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code)?  empty,TResult? Function( String code,  int length)?  minLength,TResult? Function( String code)?  includeUppercase,TResult? Function( String code)?  includeLowercase,TResult? Function( String code)?  includeSpecialCharacter,TResult? Function( String code)?  includeDigit,}) {final _that = this;
switch (_that) {
case PasswordFailureEmpty() when empty != null:
return empty(_that.code);case PasswordFailureInvalidMinLength() when minLength != null:
return minLength(_that.code,_that.length);case PasswordFailureIncludeUppercase() when includeUppercase != null:
return includeUppercase(_that.code);case PasswordFailureIncludeLowercase() when includeLowercase != null:
return includeLowercase(_that.code);case PasswordFailureIncludeSpecialCharacter() when includeSpecialCharacter != null:
return includeSpecialCharacter(_that.code);case PasswordFailureIncludeDigit() when includeDigit != null:
return includeDigit(_that.code);case _:
  return null;

}
}

}

/// @nodoc


class PasswordFailureEmpty extends PasswordFailure {
  const PasswordFailureEmpty({this.code = 'empty'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordFailureEmptyCopyWith<PasswordFailureEmpty> get copyWith => _$PasswordFailureEmptyCopyWithImpl<PasswordFailureEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordFailureEmpty&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'PasswordFailure.empty(code: $code)';
}


}

/// @nodoc
abstract mixin class $PasswordFailureEmptyCopyWith<$Res> implements $PasswordFailureCopyWith<$Res> {
  factory $PasswordFailureEmptyCopyWith(PasswordFailureEmpty value, $Res Function(PasswordFailureEmpty) _then) = _$PasswordFailureEmptyCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PasswordFailureEmptyCopyWithImpl<$Res>
    implements $PasswordFailureEmptyCopyWith<$Res> {
  _$PasswordFailureEmptyCopyWithImpl(this._self, this._then);

  final PasswordFailureEmpty _self;
  final $Res Function(PasswordFailureEmpty) _then;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(PasswordFailureEmpty(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordFailureInvalidMinLength extends PasswordFailure {
  const PasswordFailureInvalidMinLength({this.code = 'minLength', this.length = 8}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordFailureInvalidMinLengthCopyWith<PasswordFailureInvalidMinLength> get copyWith => _$PasswordFailureInvalidMinLengthCopyWithImpl<PasswordFailureInvalidMinLength>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordFailureInvalidMinLength&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'PasswordFailure.minLength(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $PasswordFailureInvalidMinLengthCopyWith<$Res> implements $PasswordFailureCopyWith<$Res> {
  factory $PasswordFailureInvalidMinLengthCopyWith(PasswordFailureInvalidMinLength value, $Res Function(PasswordFailureInvalidMinLength) _then) = _$PasswordFailureInvalidMinLengthCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$PasswordFailureInvalidMinLengthCopyWithImpl<$Res>
    implements $PasswordFailureInvalidMinLengthCopyWith<$Res> {
  _$PasswordFailureInvalidMinLengthCopyWithImpl(this._self, this._then);

  final PasswordFailureInvalidMinLength _self;
  final $Res Function(PasswordFailureInvalidMinLength) _then;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(PasswordFailureInvalidMinLength(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class PasswordFailureIncludeUppercase extends PasswordFailure {
  const PasswordFailureIncludeUppercase({this.code = 'includeUppercase'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordFailureIncludeUppercaseCopyWith<PasswordFailureIncludeUppercase> get copyWith => _$PasswordFailureIncludeUppercaseCopyWithImpl<PasswordFailureIncludeUppercase>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordFailureIncludeUppercase&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'PasswordFailure.includeUppercase(code: $code)';
}


}

/// @nodoc
abstract mixin class $PasswordFailureIncludeUppercaseCopyWith<$Res> implements $PasswordFailureCopyWith<$Res> {
  factory $PasswordFailureIncludeUppercaseCopyWith(PasswordFailureIncludeUppercase value, $Res Function(PasswordFailureIncludeUppercase) _then) = _$PasswordFailureIncludeUppercaseCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PasswordFailureIncludeUppercaseCopyWithImpl<$Res>
    implements $PasswordFailureIncludeUppercaseCopyWith<$Res> {
  _$PasswordFailureIncludeUppercaseCopyWithImpl(this._self, this._then);

  final PasswordFailureIncludeUppercase _self;
  final $Res Function(PasswordFailureIncludeUppercase) _then;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(PasswordFailureIncludeUppercase(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordFailureIncludeLowercase extends PasswordFailure {
  const PasswordFailureIncludeLowercase({this.code = 'includeLowercase'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordFailureIncludeLowercaseCopyWith<PasswordFailureIncludeLowercase> get copyWith => _$PasswordFailureIncludeLowercaseCopyWithImpl<PasswordFailureIncludeLowercase>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordFailureIncludeLowercase&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'PasswordFailure.includeLowercase(code: $code)';
}


}

/// @nodoc
abstract mixin class $PasswordFailureIncludeLowercaseCopyWith<$Res> implements $PasswordFailureCopyWith<$Res> {
  factory $PasswordFailureIncludeLowercaseCopyWith(PasswordFailureIncludeLowercase value, $Res Function(PasswordFailureIncludeLowercase) _then) = _$PasswordFailureIncludeLowercaseCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PasswordFailureIncludeLowercaseCopyWithImpl<$Res>
    implements $PasswordFailureIncludeLowercaseCopyWith<$Res> {
  _$PasswordFailureIncludeLowercaseCopyWithImpl(this._self, this._then);

  final PasswordFailureIncludeLowercase _self;
  final $Res Function(PasswordFailureIncludeLowercase) _then;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(PasswordFailureIncludeLowercase(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordFailureIncludeSpecialCharacter extends PasswordFailure {
  const PasswordFailureIncludeSpecialCharacter({this.code = 'includeSpecialCharacter'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordFailureIncludeSpecialCharacterCopyWith<PasswordFailureIncludeSpecialCharacter> get copyWith => _$PasswordFailureIncludeSpecialCharacterCopyWithImpl<PasswordFailureIncludeSpecialCharacter>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordFailureIncludeSpecialCharacter&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'PasswordFailure.includeSpecialCharacter(code: $code)';
}


}

/// @nodoc
abstract mixin class $PasswordFailureIncludeSpecialCharacterCopyWith<$Res> implements $PasswordFailureCopyWith<$Res> {
  factory $PasswordFailureIncludeSpecialCharacterCopyWith(PasswordFailureIncludeSpecialCharacter value, $Res Function(PasswordFailureIncludeSpecialCharacter) _then) = _$PasswordFailureIncludeSpecialCharacterCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PasswordFailureIncludeSpecialCharacterCopyWithImpl<$Res>
    implements $PasswordFailureIncludeSpecialCharacterCopyWith<$Res> {
  _$PasswordFailureIncludeSpecialCharacterCopyWithImpl(this._self, this._then);

  final PasswordFailureIncludeSpecialCharacter _self;
  final $Res Function(PasswordFailureIncludeSpecialCharacter) _then;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(PasswordFailureIncludeSpecialCharacter(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PasswordFailureIncludeDigit extends PasswordFailure {
  const PasswordFailureIncludeDigit({this.code = 'includeDigit'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PasswordFailureIncludeDigitCopyWith<PasswordFailureIncludeDigit> get copyWith => _$PasswordFailureIncludeDigitCopyWithImpl<PasswordFailureIncludeDigit>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordFailureIncludeDigit&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'PasswordFailure.includeDigit(code: $code)';
}


}

/// @nodoc
abstract mixin class $PasswordFailureIncludeDigitCopyWith<$Res> implements $PasswordFailureCopyWith<$Res> {
  factory $PasswordFailureIncludeDigitCopyWith(PasswordFailureIncludeDigit value, $Res Function(PasswordFailureIncludeDigit) _then) = _$PasswordFailureIncludeDigitCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$PasswordFailureIncludeDigitCopyWithImpl<$Res>
    implements $PasswordFailureIncludeDigitCopyWith<$Res> {
  _$PasswordFailureIncludeDigitCopyWithImpl(this._self, this._then);

  final PasswordFailureIncludeDigit _self;
  final $Res Function(PasswordFailureIncludeDigit) _then;

/// Create a copy of PasswordFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(PasswordFailureIncludeDigit(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
