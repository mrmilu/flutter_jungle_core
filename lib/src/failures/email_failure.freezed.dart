// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmailFailure {

 String get code;
/// Create a copy of EmailFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailFailureCopyWith<EmailFailure> get copyWith => _$EmailFailureCopyWithImpl<EmailFailure>(this as EmailFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EmailFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailFailure&&(identical(other.code, _this.code) || other.code == _this.code));
}


@override
int get hashCode {
  final _this = this as EmailFailure;
  return Object.hash(runtimeType,_this.code);
}

@override
String toString() {
  final _this = this as EmailFailure;
  return 'EmailFailure(code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $EmailFailureCopyWith<$Res>  {
  factory $EmailFailureCopyWith(EmailFailure value, $Res Function(EmailFailure) _then) = _$EmailFailureCopyWithImpl;
@useResult
$Res call({
 String code
});




}
/// @nodoc
class _$EmailFailureCopyWithImpl<$Res>
    implements $EmailFailureCopyWith<$Res> {
  _$EmailFailureCopyWithImpl(this._self, this._then);

  final EmailFailure _self;
  final $Res Function(EmailFailure) _then;

/// Create a copy of EmailFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailFailure].
extension EmailFailurePatterns on EmailFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( EmailFailureEmpty value)?  empty,TResult Function( EmailFailureInvalid value)?  invalid,required TResult orElse(),}){
final _that = this;
switch (_that) {
case EmailFailureEmpty() when empty != null:
return empty(_that);case EmailFailureInvalid() when invalid != null:
return invalid(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( EmailFailureEmpty value)  empty,required TResult Function( EmailFailureInvalid value)  invalid,}){
final _that = this;
switch (_that) {
case EmailFailureEmpty():
return empty(_that);case EmailFailureInvalid():
return invalid(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( EmailFailureEmpty value)?  empty,TResult? Function( EmailFailureInvalid value)?  invalid,}){
final _that = this;
switch (_that) {
case EmailFailureEmpty() when empty != null:
return empty(_that);case EmailFailureInvalid() when invalid != null:
return invalid(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code)?  empty,TResult Function( String code)?  invalid,required TResult orElse(),}) {final _that = this;
switch (_that) {
case EmailFailureEmpty() when empty != null:
return empty(_that.code);case EmailFailureInvalid() when invalid != null:
return invalid(_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code)  empty,required TResult Function( String code)  invalid,}) {final _that = this;
switch (_that) {
case EmailFailureEmpty():
return empty(_that.code);case EmailFailureInvalid():
return invalid(_that.code);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code)?  empty,TResult? Function( String code)?  invalid,}) {final _that = this;
switch (_that) {
case EmailFailureEmpty() when empty != null:
return empty(_that.code);case EmailFailureInvalid() when invalid != null:
return invalid(_that.code);case _:
  return null;

}
}

}

/// @nodoc


class EmailFailureEmpty implements EmailFailure {
  const EmailFailureEmpty({this.code = 'empty'});
  

@override@JsonKey() final  String code;

/// Create a copy of EmailFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailFailureEmptyCopyWith<EmailFailureEmpty> get copyWith => _$EmailFailureEmptyCopyWithImpl<EmailFailureEmpty>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailFailureEmpty&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'EmailFailure.empty(code: $code)';
}


}

/// @nodoc
abstract mixin class $EmailFailureEmptyCopyWith<$Res> implements $EmailFailureCopyWith<$Res> {
  factory $EmailFailureEmptyCopyWith(EmailFailureEmpty value, $Res Function(EmailFailureEmpty) _then) = _$EmailFailureEmptyCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$EmailFailureEmptyCopyWithImpl<$Res>
    implements $EmailFailureEmptyCopyWith<$Res> {
  _$EmailFailureEmptyCopyWithImpl(this._self, this._then);

  final EmailFailureEmpty _self;
  final $Res Function(EmailFailureEmpty) _then;

/// Create a copy of EmailFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(EmailFailureEmpty(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EmailFailureInvalid implements EmailFailure {
  const EmailFailureInvalid({this.code = 'invalid'});
  

@override@JsonKey() final  String code;

/// Create a copy of EmailFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailFailureInvalidCopyWith<EmailFailureInvalid> get copyWith => _$EmailFailureInvalidCopyWithImpl<EmailFailureInvalid>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailFailureInvalid&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code);
}

@override
String toString() {
    return 'EmailFailure.invalid(code: $code)';
}


}

/// @nodoc
abstract mixin class $EmailFailureInvalidCopyWith<$Res> implements $EmailFailureCopyWith<$Res> {
  factory $EmailFailureInvalidCopyWith(EmailFailureInvalid value, $Res Function(EmailFailureInvalid) _then) = _$EmailFailureInvalidCopyWithImpl;
@override @useResult
$Res call({
 String code
});




}
/// @nodoc
class _$EmailFailureInvalidCopyWithImpl<$Res>
    implements $EmailFailureInvalidCopyWith<$Res> {
  _$EmailFailureInvalidCopyWithImpl(this._self, this._then);

  final EmailFailureInvalid _self;
  final $Res Function(EmailFailureInvalid) _then;

/// Create a copy of EmailFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,}) {
  return _then(EmailFailureInvalid(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
