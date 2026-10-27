// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_base_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeneralBaseFailure {

 String get code; String get message;
/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralBaseFailureCopyWith<GeneralBaseFailure> get copyWith => _$GeneralBaseFailureCopyWithImpl<GeneralBaseFailure>(this as GeneralBaseFailure, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GeneralBaseFailure;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralBaseFailure&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as GeneralBaseFailure;
  return Object.hash(runtimeType,_this.code,_this.message);
}

@override
String toString() {
  final _this = this as GeneralBaseFailure;
  return 'GeneralBaseFailure(code: ${_this.code}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $GeneralBaseFailureCopyWith<$Res>  {
  factory $GeneralBaseFailureCopyWith(GeneralBaseFailure value, $Res Function(GeneralBaseFailure) _then) = _$GeneralBaseFailureCopyWithImpl;
@useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class _$GeneralBaseFailureCopyWithImpl<$Res>
    implements $GeneralBaseFailureCopyWith<$Res> {
  _$GeneralBaseFailureCopyWithImpl(this._self, this._then);

  final GeneralBaseFailure _self;
  final $Res Function(GeneralBaseFailure) _then;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? message = null,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneralBaseFailure].
extension GeneralBaseFailurePatterns on GeneralBaseFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GeneralBaseFailureUnauthorized value)?  unauthorized,TResult Function( GeneralBaseFailureInternalError value)?  internalError,TResult Function( GeneralBaseFailureNetworkError value)?  networkError,TResult Function( GeneralBaseFailureTimeoutError value)?  timeoutError,TResult Function( GeneralBaseFailureInvalidResponseFormat value)?  invalidResponseFormat,TResult Function( GeneralBaseFailureUnexpectedError value)?  unexpectedError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GeneralBaseFailureUnauthorized() when unauthorized != null:
return unauthorized(_that);case GeneralBaseFailureInternalError() when internalError != null:
return internalError(_that);case GeneralBaseFailureNetworkError() when networkError != null:
return networkError(_that);case GeneralBaseFailureTimeoutError() when timeoutError != null:
return timeoutError(_that);case GeneralBaseFailureInvalidResponseFormat() when invalidResponseFormat != null:
return invalidResponseFormat(_that);case GeneralBaseFailureUnexpectedError() when unexpectedError != null:
return unexpectedError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GeneralBaseFailureUnauthorized value)  unauthorized,required TResult Function( GeneralBaseFailureInternalError value)  internalError,required TResult Function( GeneralBaseFailureNetworkError value)  networkError,required TResult Function( GeneralBaseFailureTimeoutError value)  timeoutError,required TResult Function( GeneralBaseFailureInvalidResponseFormat value)  invalidResponseFormat,required TResult Function( GeneralBaseFailureUnexpectedError value)  unexpectedError,}){
final _that = this;
switch (_that) {
case GeneralBaseFailureUnauthorized():
return unauthorized(_that);case GeneralBaseFailureInternalError():
return internalError(_that);case GeneralBaseFailureNetworkError():
return networkError(_that);case GeneralBaseFailureTimeoutError():
return timeoutError(_that);case GeneralBaseFailureInvalidResponseFormat():
return invalidResponseFormat(_that);case GeneralBaseFailureUnexpectedError():
return unexpectedError(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GeneralBaseFailureUnauthorized value)?  unauthorized,TResult? Function( GeneralBaseFailureInternalError value)?  internalError,TResult? Function( GeneralBaseFailureNetworkError value)?  networkError,TResult? Function( GeneralBaseFailureTimeoutError value)?  timeoutError,TResult? Function( GeneralBaseFailureInvalidResponseFormat value)?  invalidResponseFormat,TResult? Function( GeneralBaseFailureUnexpectedError value)?  unexpectedError,}){
final _that = this;
switch (_that) {
case GeneralBaseFailureUnauthorized() when unauthorized != null:
return unauthorized(_that);case GeneralBaseFailureInternalError() when internalError != null:
return internalError(_that);case GeneralBaseFailureNetworkError() when networkError != null:
return networkError(_that);case GeneralBaseFailureTimeoutError() when timeoutError != null:
return timeoutError(_that);case GeneralBaseFailureInvalidResponseFormat() when invalidResponseFormat != null:
return invalidResponseFormat(_that);case GeneralBaseFailureUnexpectedError() when unexpectedError != null:
return unexpectedError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String code,  String message)?  unauthorized,TResult Function( String code,  String message)?  internalError,TResult Function( String code,  String message)?  networkError,TResult Function( String code,  String message)?  timeoutError,TResult Function( String code,  String message)?  invalidResponseFormat,TResult Function( String code,  String message)?  unexpectedError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GeneralBaseFailureUnauthorized() when unauthorized != null:
return unauthorized(_that.code,_that.message);case GeneralBaseFailureInternalError() when internalError != null:
return internalError(_that.code,_that.message);case GeneralBaseFailureNetworkError() when networkError != null:
return networkError(_that.code,_that.message);case GeneralBaseFailureTimeoutError() when timeoutError != null:
return timeoutError(_that.code,_that.message);case GeneralBaseFailureInvalidResponseFormat() when invalidResponseFormat != null:
return invalidResponseFormat(_that.code,_that.message);case GeneralBaseFailureUnexpectedError() when unexpectedError != null:
return unexpectedError(_that.code,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String code,  String message)  unauthorized,required TResult Function( String code,  String message)  internalError,required TResult Function( String code,  String message)  networkError,required TResult Function( String code,  String message)  timeoutError,required TResult Function( String code,  String message)  invalidResponseFormat,required TResult Function( String code,  String message)  unexpectedError,}) {final _that = this;
switch (_that) {
case GeneralBaseFailureUnauthorized():
return unauthorized(_that.code,_that.message);case GeneralBaseFailureInternalError():
return internalError(_that.code,_that.message);case GeneralBaseFailureNetworkError():
return networkError(_that.code,_that.message);case GeneralBaseFailureTimeoutError():
return timeoutError(_that.code,_that.message);case GeneralBaseFailureInvalidResponseFormat():
return invalidResponseFormat(_that.code,_that.message);case GeneralBaseFailureUnexpectedError():
return unexpectedError(_that.code,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String code,  String message)?  unauthorized,TResult? Function( String code,  String message)?  internalError,TResult? Function( String code,  String message)?  networkError,TResult? Function( String code,  String message)?  timeoutError,TResult? Function( String code,  String message)?  invalidResponseFormat,TResult? Function( String code,  String message)?  unexpectedError,}) {final _that = this;
switch (_that) {
case GeneralBaseFailureUnauthorized() when unauthorized != null:
return unauthorized(_that.code,_that.message);case GeneralBaseFailureInternalError() when internalError != null:
return internalError(_that.code,_that.message);case GeneralBaseFailureNetworkError() when networkError != null:
return networkError(_that.code,_that.message);case GeneralBaseFailureTimeoutError() when timeoutError != null:
return timeoutError(_that.code,_that.message);case GeneralBaseFailureInvalidResponseFormat() when invalidResponseFormat != null:
return invalidResponseFormat(_that.code,_that.message);case GeneralBaseFailureUnexpectedError() when unexpectedError != null:
return unexpectedError(_that.code,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class GeneralBaseFailureUnauthorized extends GeneralBaseFailure {
  const GeneralBaseFailureUnauthorized({this.code = 'unauthorized', this.message = 'No estás autorizado. Por favor, inicia sesión.'}): super._();
  

@override@JsonKey() final  String code;
@override@JsonKey() final  String message;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralBaseFailureUnauthorizedCopyWith<GeneralBaseFailureUnauthorized> get copyWith => _$GeneralBaseFailureUnauthorizedCopyWithImpl<GeneralBaseFailureUnauthorized>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralBaseFailureUnauthorized&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,message);
}

@override
String toString() {
    return 'GeneralBaseFailure.unauthorized(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneralBaseFailureUnauthorizedCopyWith<$Res> implements $GeneralBaseFailureCopyWith<$Res> {
  factory $GeneralBaseFailureUnauthorizedCopyWith(GeneralBaseFailureUnauthorized value, $Res Function(GeneralBaseFailureUnauthorized) _then) = _$GeneralBaseFailureUnauthorizedCopyWithImpl;
@override @useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class _$GeneralBaseFailureUnauthorizedCopyWithImpl<$Res>
    implements $GeneralBaseFailureUnauthorizedCopyWith<$Res> {
  _$GeneralBaseFailureUnauthorizedCopyWithImpl(this._self, this._then);

  final GeneralBaseFailureUnauthorized _self;
  final $Res Function(GeneralBaseFailureUnauthorized) _then;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(GeneralBaseFailureUnauthorized(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GeneralBaseFailureInternalError extends GeneralBaseFailure {
  const GeneralBaseFailureInternalError({this.code = 'internalError', this.message = 'Error interno del servidor. Intenta más tarde.'}): super._();
  

@override@JsonKey() final  String code;
@override@JsonKey() final  String message;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralBaseFailureInternalErrorCopyWith<GeneralBaseFailureInternalError> get copyWith => _$GeneralBaseFailureInternalErrorCopyWithImpl<GeneralBaseFailureInternalError>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralBaseFailureInternalError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,message);
}

@override
String toString() {
    return 'GeneralBaseFailure.internalError(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneralBaseFailureInternalErrorCopyWith<$Res> implements $GeneralBaseFailureCopyWith<$Res> {
  factory $GeneralBaseFailureInternalErrorCopyWith(GeneralBaseFailureInternalError value, $Res Function(GeneralBaseFailureInternalError) _then) = _$GeneralBaseFailureInternalErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class _$GeneralBaseFailureInternalErrorCopyWithImpl<$Res>
    implements $GeneralBaseFailureInternalErrorCopyWith<$Res> {
  _$GeneralBaseFailureInternalErrorCopyWithImpl(this._self, this._then);

  final GeneralBaseFailureInternalError _self;
  final $Res Function(GeneralBaseFailureInternalError) _then;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(GeneralBaseFailureInternalError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GeneralBaseFailureNetworkError extends GeneralBaseFailure {
  const GeneralBaseFailureNetworkError({this.code = 'networkError', this.message = 'Sin conexión a internet. Verifica tu red.'}): super._();
  

@override@JsonKey() final  String code;
@override@JsonKey() final  String message;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralBaseFailureNetworkErrorCopyWith<GeneralBaseFailureNetworkError> get copyWith => _$GeneralBaseFailureNetworkErrorCopyWithImpl<GeneralBaseFailureNetworkError>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralBaseFailureNetworkError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,message);
}

@override
String toString() {
    return 'GeneralBaseFailure.networkError(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneralBaseFailureNetworkErrorCopyWith<$Res> implements $GeneralBaseFailureCopyWith<$Res> {
  factory $GeneralBaseFailureNetworkErrorCopyWith(GeneralBaseFailureNetworkError value, $Res Function(GeneralBaseFailureNetworkError) _then) = _$GeneralBaseFailureNetworkErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class _$GeneralBaseFailureNetworkErrorCopyWithImpl<$Res>
    implements $GeneralBaseFailureNetworkErrorCopyWith<$Res> {
  _$GeneralBaseFailureNetworkErrorCopyWithImpl(this._self, this._then);

  final GeneralBaseFailureNetworkError _self;
  final $Res Function(GeneralBaseFailureNetworkError) _then;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(GeneralBaseFailureNetworkError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GeneralBaseFailureTimeoutError extends GeneralBaseFailure {
  const GeneralBaseFailureTimeoutError({this.code = 'timeoutError', this.message = 'La solicitud tardó demasiado. Intenta de nuevo.'}): super._();
  

@override@JsonKey() final  String code;
@override@JsonKey() final  String message;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralBaseFailureTimeoutErrorCopyWith<GeneralBaseFailureTimeoutError> get copyWith => _$GeneralBaseFailureTimeoutErrorCopyWithImpl<GeneralBaseFailureTimeoutError>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralBaseFailureTimeoutError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,message);
}

@override
String toString() {
    return 'GeneralBaseFailure.timeoutError(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneralBaseFailureTimeoutErrorCopyWith<$Res> implements $GeneralBaseFailureCopyWith<$Res> {
  factory $GeneralBaseFailureTimeoutErrorCopyWith(GeneralBaseFailureTimeoutError value, $Res Function(GeneralBaseFailureTimeoutError) _then) = _$GeneralBaseFailureTimeoutErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class _$GeneralBaseFailureTimeoutErrorCopyWithImpl<$Res>
    implements $GeneralBaseFailureTimeoutErrorCopyWith<$Res> {
  _$GeneralBaseFailureTimeoutErrorCopyWithImpl(this._self, this._then);

  final GeneralBaseFailureTimeoutError _self;
  final $Res Function(GeneralBaseFailureTimeoutError) _then;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(GeneralBaseFailureTimeoutError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GeneralBaseFailureInvalidResponseFormat extends GeneralBaseFailure {
  const GeneralBaseFailureInvalidResponseFormat({this.code = 'invalidResponseFormat', this.message = 'Formato de respuesta inválido. Contacta soporte.'}): super._();
  

@override@JsonKey() final  String code;
@override@JsonKey() final  String message;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralBaseFailureInvalidResponseFormatCopyWith<GeneralBaseFailureInvalidResponseFormat> get copyWith => _$GeneralBaseFailureInvalidResponseFormatCopyWithImpl<GeneralBaseFailureInvalidResponseFormat>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralBaseFailureInvalidResponseFormat&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,message);
}

@override
String toString() {
    return 'GeneralBaseFailure.invalidResponseFormat(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneralBaseFailureInvalidResponseFormatCopyWith<$Res> implements $GeneralBaseFailureCopyWith<$Res> {
  factory $GeneralBaseFailureInvalidResponseFormatCopyWith(GeneralBaseFailureInvalidResponseFormat value, $Res Function(GeneralBaseFailureInvalidResponseFormat) _then) = _$GeneralBaseFailureInvalidResponseFormatCopyWithImpl;
@override @useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class _$GeneralBaseFailureInvalidResponseFormatCopyWithImpl<$Res>
    implements $GeneralBaseFailureInvalidResponseFormatCopyWith<$Res> {
  _$GeneralBaseFailureInvalidResponseFormatCopyWithImpl(this._self, this._then);

  final GeneralBaseFailureInvalidResponseFormat _self;
  final $Res Function(GeneralBaseFailureInvalidResponseFormat) _then;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(GeneralBaseFailureInvalidResponseFormat(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GeneralBaseFailureUnexpectedError extends GeneralBaseFailure {
  const GeneralBaseFailureUnexpectedError({this.code = 'unexpectedError', this.message = 'Error inesperado. Intenta más tarde.'}): super._();
  

@override@JsonKey() final  String code;
@override@JsonKey() final  String message;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralBaseFailureUnexpectedErrorCopyWith<GeneralBaseFailureUnexpectedError> get copyWith => _$GeneralBaseFailureUnexpectedErrorCopyWithImpl<GeneralBaseFailureUnexpectedError>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralBaseFailureUnexpectedError&&(identical(other.code, code) || other.code == code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,code,message);
}

@override
String toString() {
    return 'GeneralBaseFailure.unexpectedError(code: $code, message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneralBaseFailureUnexpectedErrorCopyWith<$Res> implements $GeneralBaseFailureCopyWith<$Res> {
  factory $GeneralBaseFailureUnexpectedErrorCopyWith(GeneralBaseFailureUnexpectedError value, $Res Function(GeneralBaseFailureUnexpectedError) _then) = _$GeneralBaseFailureUnexpectedErrorCopyWithImpl;
@override @useResult
$Res call({
 String code, String message
});




}
/// @nodoc
class _$GeneralBaseFailureUnexpectedErrorCopyWithImpl<$Res>
    implements $GeneralBaseFailureUnexpectedErrorCopyWith<$Res> {
  _$GeneralBaseFailureUnexpectedErrorCopyWithImpl(this._self, this._then);

  final GeneralBaseFailureUnexpectedError _self;
  final $Res Function(GeneralBaseFailureUnexpectedError) _then;

/// Create a copy of GeneralBaseFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? message = null,}) {
  return _then(GeneralBaseFailureUnexpectedError(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
