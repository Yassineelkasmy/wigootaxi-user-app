// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookingStateTearOff {
  const _$BookingStateTearOff();

  _BookingState call(
      {required bool bookingRide,
      required Option<Either<BookingFailure, Unit>>
          bookingFailureOrSuccessOption}) {
    return _BookingState(
      bookingRide: bookingRide,
      bookingFailureOrSuccessOption: bookingFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $BookingState = _$BookingStateTearOff();

/// @nodoc
mixin _$BookingState {
  bool get bookingRide => throw _privateConstructorUsedError;
  Option<Either<BookingFailure, Unit>> get bookingFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res>;
  $Res call(
      {bool bookingRide,
      Option<Either<BookingFailure, Unit>> bookingFailureOrSuccessOption});
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res> implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  final BookingState _value;
  // ignore: unused_field
  final $Res Function(BookingState) _then;

  @override
  $Res call({
    Object? bookingRide = freezed,
    Object? bookingFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      bookingRide: bookingRide == freezed
          ? _value.bookingRide
          : bookingRide // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingFailureOrSuccessOption: bookingFailureOrSuccessOption == freezed
          ? _value.bookingFailureOrSuccessOption
          : bookingFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BookingFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$BookingStateCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$BookingStateCopyWith(
          _BookingState value, $Res Function(_BookingState) then) =
      __$BookingStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool bookingRide,
      Option<Either<BookingFailure, Unit>> bookingFailureOrSuccessOption});
}

/// @nodoc
class __$BookingStateCopyWithImpl<$Res> extends _$BookingStateCopyWithImpl<$Res>
    implements _$BookingStateCopyWith<$Res> {
  __$BookingStateCopyWithImpl(
      _BookingState _value, $Res Function(_BookingState) _then)
      : super(_value, (v) => _then(v as _BookingState));

  @override
  _BookingState get _value => super._value as _BookingState;

  @override
  $Res call({
    Object? bookingRide = freezed,
    Object? bookingFailureOrSuccessOption = freezed,
  }) {
    return _then(_BookingState(
      bookingRide: bookingRide == freezed
          ? _value.bookingRide
          : bookingRide // ignore: cast_nullable_to_non_nullable
              as bool,
      bookingFailureOrSuccessOption: bookingFailureOrSuccessOption == freezed
          ? _value.bookingFailureOrSuccessOption
          : bookingFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BookingFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_BookingState implements _BookingState {
  const _$_BookingState(
      {required this.bookingRide, required this.bookingFailureOrSuccessOption});

  @override
  final bool bookingRide;
  @override
  final Option<Either<BookingFailure, Unit>> bookingFailureOrSuccessOption;

  @override
  String toString() {
    return 'BookingState(bookingRide: $bookingRide, bookingFailureOrSuccessOption: $bookingFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingState &&
            const DeepCollectionEquality()
                .equals(other.bookingRide, bookingRide) &&
            const DeepCollectionEquality().equals(
                other.bookingFailureOrSuccessOption,
                bookingFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookingRide),
      const DeepCollectionEquality().hash(bookingFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$BookingStateCopyWith<_BookingState> get copyWith =>
      __$BookingStateCopyWithImpl<_BookingState>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {required bool bookingRide,
      required Option<Either<BookingFailure, Unit>>
          bookingFailureOrSuccessOption}) = _$_BookingState;

  @override
  bool get bookingRide;
  @override
  Option<Either<BookingFailure, Unit>> get bookingFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$BookingStateCopyWith<_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
