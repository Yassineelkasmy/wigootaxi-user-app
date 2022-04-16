// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'geocoding_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeocodingFailureTearOff {
  const _$GeocodingFailureTearOff();

  _GeocodingFailure serverError() {
    return const _GeocodingFailure();
  }
}

/// @nodoc
const $GeocodingFailure = _$GeocodingFailureTearOff();

/// @nodoc
mixin _$GeocodingFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GeocodingFailure value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GeocodingFailure value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GeocodingFailure value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodingFailureCopyWith<$Res> {
  factory $GeocodingFailureCopyWith(
          GeocodingFailure value, $Res Function(GeocodingFailure) then) =
      _$GeocodingFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GeocodingFailureCopyWithImpl<$Res>
    implements $GeocodingFailureCopyWith<$Res> {
  _$GeocodingFailureCopyWithImpl(this._value, this._then);

  final GeocodingFailure _value;
  // ignore: unused_field
  final $Res Function(GeocodingFailure) _then;
}

/// @nodoc
abstract class _$GeocodingFailureCopyWith<$Res> {
  factory _$GeocodingFailureCopyWith(
          _GeocodingFailure value, $Res Function(_GeocodingFailure) then) =
      __$GeocodingFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$GeocodingFailureCopyWithImpl<$Res>
    extends _$GeocodingFailureCopyWithImpl<$Res>
    implements _$GeocodingFailureCopyWith<$Res> {
  __$GeocodingFailureCopyWithImpl(
      _GeocodingFailure _value, $Res Function(_GeocodingFailure) _then)
      : super(_value, (v) => _then(v as _GeocodingFailure));

  @override
  _GeocodingFailure get _value => super._value as _GeocodingFailure;
}

/// @nodoc

class _$_GeocodingFailure implements _GeocodingFailure {
  const _$_GeocodingFailure();

  @override
  String toString() {
    return 'GeocodingFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GeocodingFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GeocodingFailure value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GeocodingFailure value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GeocodingFailure value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _GeocodingFailure implements GeocodingFailure {
  const factory _GeocodingFailure() = _$_GeocodingFailure;
}
