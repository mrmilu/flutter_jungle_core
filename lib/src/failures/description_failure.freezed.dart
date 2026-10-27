// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'description_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DescriptionFailure {

 String get code;
/// Create a copy of DescriptionFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptionFailureCopyWith<DescriptionFailure> get copyWith => _$DescriptionFailureCopyWithImpl<DescriptionFailure>(this as DescriptionFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DescriptionFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DescriptionFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as DescriptionFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as DescriptionFailure;
  return 'DescriptionFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $DescriptionFailureCopyWith<$Res>  {
  factory $DescriptionFailureCopyWith(DescriptionFailure value, $Res Function(DescriptionFailure) _then) = _$DescriptionFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$DescriptionFailureCopyWithImpl<$Res>
    implements $DescriptionFailureCopyWith<$Res> {
  _$DescriptionFailureCopyWithImpl(this._self, this._then);

  final DescriptionFailure _self;
  final $Res Function(DescriptionFailure) _then;

/// Create a copy of DescriptionFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DescriptionFailure].
extension DescriptionFailurePatterns on DescriptionFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DescriptionFailureEmpty value)?  empty,TResult Function( DescriptionFailureInvalid value)?  invalid,TResult Function( DescriptionFailureTooLong value)?  tooLong,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DescriptionFailureEmpty() when empty != null:
return empty(_that);case DescriptionFailureInvalid() when invalid != null:
return invalid(_that);case DescriptionFailureTooLong() when tooLong != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DescriptionFailureEmpty value)  empty,required TResult Function( DescriptionFailureInvalid value)  invalid,required TResult Function( DescriptionFailureTooLong value)  tooLong,}){
final _that = this;
switch (_that) {
case DescriptionFailureEmpty():
return empty(_that);case DescriptionFailureInvalid():
return invalid(_that);case DescriptionFailureTooLong():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DescriptionFailureEmpty value)?  empty,TResult? Function( DescriptionFailureInvalid value)?  invalid,TResult? Function( DescriptionFailureTooLong value)?  tooLong,}){
final _that = this;
switch (_that) {
case DescriptionFailureEmpty() when empty != null:
return empty(_that);case DescriptionFailureInvalid() when invalid != null:
return invalid(_that);case DescriptionFailureTooLong() when tooLong != null:
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
case DescriptionFailureEmpty() when empty != null:
return empty(_that.code);case DescriptionFailureInvalid() when invalid != null:
return invalid(_that.code);case DescriptionFailureTooLong() when tooLong != null:
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
case DescriptionFailureEmpty():
return empty(_that.code);case DescriptionFailureInvalid():
return invalid(_that.code);case DescriptionFailureTooLong():
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
case DescriptionFailureEmpty() when empty != null:
return empty(_that.code);case DescriptionFailureInvalid() when invalid != null:
return invalid(_that.code);case DescriptionFailureTooLong() when tooLong != null:
return tooLong(_that.code,_that.length);case _:
  return null;

}
}

}

/// @nodoc


class DescriptionFailureEmpty extends DescriptionFailure {
  const DescriptionFailureEmpty({this.code = 'empty'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of DescriptionFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptionFailureEmptyCopyWith<DescriptionFailureEmpty> get copyWith => _$DescriptionFailureEmptyCopyWithImpl<DescriptionFailureEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DescriptionFailureEmpty&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'DescriptionFailure.empty(code: $code)';
}


}

/// @nodoc
abstract mixin class $DescriptionFailureEmptyCopyWith<$Res> implements $DescriptionFailureCopyWith<$Res> {
  factory $DescriptionFailureEmptyCopyWith(DescriptionFailureEmpty value, $Res Function(DescriptionFailureEmpty) _then) = _$DescriptionFailureEmptyCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$DescriptionFailureEmptyCopyWithImpl<$Res>
    implements $DescriptionFailureEmptyCopyWith<$Res> {
  _$DescriptionFailureEmptyCopyWithImpl(this._self, this._then);

  final DescriptionFailureEmpty _self;
  final $Res Function(DescriptionFailureEmpty) _then;

/// Create a copy of DescriptionFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(DescriptionFailureEmpty(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DescriptionFailureInvalid extends DescriptionFailure {
  const DescriptionFailureInvalid({this.code = 'invalid'}): super._();
  

@override@JsonKey() final  String code;

/// Create a copy of DescriptionFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptionFailureInvalidCopyWith<DescriptionFailureInvalid> get copyWith => _$DescriptionFailureInvalidCopyWithImpl<DescriptionFailureInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DescriptionFailureInvalid&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'DescriptionFailure.invalid(code: $code)';
}


}

/// @nodoc
abstract mixin class $DescriptionFailureInvalidCopyWith<$Res> implements $DescriptionFailureCopyWith<$Res> {
  factory $DescriptionFailureInvalidCopyWith(DescriptionFailureInvalid value, $Res Function(DescriptionFailureInvalid) _then) = _$DescriptionFailureInvalidCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$DescriptionFailureInvalidCopyWithImpl<$Res>
    implements $DescriptionFailureInvalidCopyWith<$Res> {
  _$DescriptionFailureInvalidCopyWithImpl(this._self, this._then);

  final DescriptionFailureInvalid _self;
  final $Res Function(DescriptionFailureInvalid) _then;

/// Create a copy of DescriptionFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(DescriptionFailureInvalid(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DescriptionFailureTooLong extends DescriptionFailure {
  const DescriptionFailureTooLong({this.code = 'tooLong', this.length = 320}): super._();
  

@override@JsonKey() final  String code;
@JsonKey() final  int length;

/// Create a copy of DescriptionFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptionFailureTooLongCopyWith<DescriptionFailureTooLong> get copyWith => _$DescriptionFailureTooLongCopyWithImpl<DescriptionFailureTooLong>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is DescriptionFailureTooLong&&(identical(other.code, code) || other.code == code)&&(identical(other.length, length) || other.length == length));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,length);
}

@override
String toString() {
    return 'DescriptionFailure.tooLong(code: $code, length: $length)';
}


}

/// @nodoc
abstract mixin class $DescriptionFailureTooLongCopyWith<$Res> implements $DescriptionFailureCopyWith<$Res> {
  factory $DescriptionFailureTooLongCopyWith(DescriptionFailureTooLong value, $Res Function(DescriptionFailureTooLong) _then) = _$DescriptionFailureTooLongCopyWithImpl;
@override @useResult
$Res call({
 String code, int length
});




}
/// @nodoc
class _$DescriptionFailureTooLongCopyWithImpl<$Res>
    implements $DescriptionFailureTooLongCopyWith<$Res> {
  _$DescriptionFailureTooLongCopyWithImpl(this._self, this._then);

  final DescriptionFailureTooLong _self;
  final $Res Function(DescriptionFailureTooLong) _then;

/// Create a copy of DescriptionFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? length = null,}) {
  return _then(DescriptionFailureTooLong(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
