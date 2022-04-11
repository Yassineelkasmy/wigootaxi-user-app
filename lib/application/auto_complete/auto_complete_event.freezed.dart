// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auto_complete_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AutoCompleteEventTearOff {
  const _$AutoCompleteEventTearOff();

  StartedTyping startedTyping() {
    return const StartedTyping();
  }
}

/// @nodoc
const $AutoCompleteEvent = _$AutoCompleteEventTearOff();

/// @nodoc
mixin _$AutoCompleteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoCompleteEventCopyWith<$Res> {
  factory $AutoCompleteEventCopyWith(
          AutoCompleteEvent value, $Res Function(AutoCompleteEvent) then) =
      _$AutoCompleteEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AutoCompleteEventCopyWithImpl<$Res>
    implements $AutoCompleteEventCopyWith<$Res> {
  _$AutoCompleteEventCopyWithImpl(this._value, this._then);

  final AutoCompleteEvent _value;
  // ignore: unused_field
  final $Res Function(AutoCompleteEvent) _then;
}

/// @nodoc
abstract class $StartedTypingCopyWith<$Res> {
  factory $StartedTypingCopyWith(
          StartedTyping value, $Res Function(StartedTyping) then) =
      _$StartedTypingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedTypingCopyWithImpl<$Res>
    extends _$AutoCompleteEventCopyWithImpl<$Res>
    implements $StartedTypingCopyWith<$Res> {
  _$StartedTypingCopyWithImpl(
      StartedTyping _value, $Res Function(StartedTyping) _then)
      : super(_value, (v) => _then(v as StartedTyping));

  @override
  StartedTyping get _value => super._value as StartedTyping;
}

/// @nodoc

class _$StartedTyping implements StartedTyping {
  const _$StartedTyping();

  @override
  String toString() {
    return 'AutoCompleteEvent.startedTyping()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StartedTyping);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
  }) {
    return startedTyping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
  }) {
    return startedTyping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    required TResult orElse(),
  }) {
    if (startedTyping != null) {
      return startedTyping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
  }) {
    return startedTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
  }) {
    return startedTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    required TResult orElse(),
  }) {
    if (startedTyping != null) {
      return startedTyping(this);
    }
    return orElse();
  }
}

abstract class StartedTyping implements AutoCompleteEvent {
  const factory StartedTyping() = _$StartedTyping;
}
