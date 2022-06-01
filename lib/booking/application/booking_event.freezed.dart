// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookingEventTearOff {
  const _$BookingEventTearOff();

  BookRideRequested bookRideRequested() {
    return const BookRideRequested();
  }
}

/// @nodoc
const $BookingEvent = _$BookingEventTearOff();

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bookRideRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? bookRideRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bookRideRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRideRequested value) bookRideRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res> implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  final BookingEvent _value;
  // ignore: unused_field
  final $Res Function(BookingEvent) _then;
}

/// @nodoc
abstract class $BookRideRequestedCopyWith<$Res> {
  factory $BookRideRequestedCopyWith(
          BookRideRequested value, $Res Function(BookRideRequested) then) =
      _$BookRideRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookRideRequestedCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res>
    implements $BookRideRequestedCopyWith<$Res> {
  _$BookRideRequestedCopyWithImpl(
      BookRideRequested _value, $Res Function(BookRideRequested) _then)
      : super(_value, (v) => _then(v as BookRideRequested));

  @override
  BookRideRequested get _value => super._value as BookRideRequested;
}

/// @nodoc

class _$BookRideRequested implements BookRideRequested {
  const _$BookRideRequested();

  @override
  String toString() {
    return 'BookingEvent.bookRideRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BookRideRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() bookRideRequested,
  }) {
    return bookRideRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? bookRideRequested,
  }) {
    return bookRideRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? bookRideRequested,
    required TResult orElse(),
  }) {
    if (bookRideRequested != null) {
      return bookRideRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BookRideRequested value) bookRideRequested,
  }) {
    return bookRideRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
  }) {
    return bookRideRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BookRideRequested value)? bookRideRequested,
    required TResult orElse(),
  }) {
    if (bookRideRequested != null) {
      return bookRideRequested(this);
    }
    return orElse();
  }
}

abstract class BookRideRequested implements BookingEvent {
  const factory BookRideRequested() = _$BookRideRequested;
}
