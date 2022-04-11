// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auto_complete_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AutoCompleteStateTearOff {
  const _$AutoCompleteStateTearOff();

  _AutoCompleteState call({required String query}) {
    return _AutoCompleteState(
      query: query,
    );
  }
}

/// @nodoc
const $AutoCompleteState = _$AutoCompleteStateTearOff();

/// @nodoc
mixin _$AutoCompleteState {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AutoCompleteStateCopyWith<AutoCompleteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoCompleteStateCopyWith<$Res> {
  factory $AutoCompleteStateCopyWith(
          AutoCompleteState value, $Res Function(AutoCompleteState) then) =
      _$AutoCompleteStateCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$AutoCompleteStateCopyWithImpl<$Res>
    implements $AutoCompleteStateCopyWith<$Res> {
  _$AutoCompleteStateCopyWithImpl(this._value, this._then);

  final AutoCompleteState _value;
  // ignore: unused_field
  final $Res Function(AutoCompleteState) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AutoCompleteStateCopyWith<$Res>
    implements $AutoCompleteStateCopyWith<$Res> {
  factory _$AutoCompleteStateCopyWith(
          _AutoCompleteState value, $Res Function(_AutoCompleteState) then) =
      __$AutoCompleteStateCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$AutoCompleteStateCopyWithImpl<$Res>
    extends _$AutoCompleteStateCopyWithImpl<$Res>
    implements _$AutoCompleteStateCopyWith<$Res> {
  __$AutoCompleteStateCopyWithImpl(
      _AutoCompleteState _value, $Res Function(_AutoCompleteState) _then)
      : super(_value, (v) => _then(v as _AutoCompleteState));

  @override
  _AutoCompleteState get _value => super._value as _AutoCompleteState;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_AutoCompleteState(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AutoCompleteState implements _AutoCompleteState {
  const _$_AutoCompleteState({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'AutoCompleteState(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoCompleteState &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$AutoCompleteStateCopyWith<_AutoCompleteState> get copyWith =>
      __$AutoCompleteStateCopyWithImpl<_AutoCompleteState>(this, _$identity);
}

abstract class _AutoCompleteState implements AutoCompleteState {
  const factory _AutoCompleteState({required String query}) =
      _$_AutoCompleteState;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$AutoCompleteStateCopyWith<_AutoCompleteState> get copyWith =>
      throw _privateConstructorUsedError;
}
