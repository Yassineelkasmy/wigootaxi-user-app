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
      required bool loadingMyBookings,
      required Option<Either<BookingFailure, DriverRecord>>
          driverFoundOrFailure,
      required List<Booking> bookings,
      Booking? currentBooking,
      required Option<Either<BookingFailure, String>>
          bookingFailureOrSuccessOption}) {
    return _BookingState(
      bookingRide: bookingRide,
      loadingMyBookings: loadingMyBookings,
      driverFoundOrFailure: driverFoundOrFailure,
      bookings: bookings,
      currentBooking: currentBooking,
      bookingFailureOrSuccessOption: bookingFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $BookingState = _$BookingStateTearOff();

/// @nodoc
mixin _$BookingState {
  bool get bookingRide => throw _privateConstructorUsedError;
  bool get loadingMyBookings => throw _privateConstructorUsedError;
  Option<Either<BookingFailure, DriverRecord>> get driverFoundOrFailure =>
      throw _privateConstructorUsedError;
  List<Booking> get bookings => throw _privateConstructorUsedError;
  Booking? get currentBooking => throw _privateConstructorUsedError;
  Option<Either<BookingFailure, String>> get bookingFailureOrSuccessOption =>
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
      bool loadingMyBookings,
      Option<Either<BookingFailure, DriverRecord>> driverFoundOrFailure,
      List<Booking> bookings,
      Booking? currentBooking,
      Option<Either<BookingFailure, String>> bookingFailureOrSuccessOption});

  $BookingCopyWith<$Res>? get currentBooking;
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
    Object? loadingMyBookings = freezed,
    Object? driverFoundOrFailure = freezed,
    Object? bookings = freezed,
    Object? currentBooking = freezed,
    Object? bookingFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      bookingRide: bookingRide == freezed
          ? _value.bookingRide
          : bookingRide // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMyBookings: loadingMyBookings == freezed
          ? _value.loadingMyBookings
          : loadingMyBookings // ignore: cast_nullable_to_non_nullable
              as bool,
      driverFoundOrFailure: driverFoundOrFailure == freezed
          ? _value.driverFoundOrFailure
          : driverFoundOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<BookingFailure, DriverRecord>>,
      bookings: bookings == freezed
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
      currentBooking: currentBooking == freezed
          ? _value.currentBooking
          : currentBooking // ignore: cast_nullable_to_non_nullable
              as Booking?,
      bookingFailureOrSuccessOption: bookingFailureOrSuccessOption == freezed
          ? _value.bookingFailureOrSuccessOption
          : bookingFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BookingFailure, String>>,
    ));
  }

  @override
  $BookingCopyWith<$Res>? get currentBooking {
    if (_value.currentBooking == null) {
      return null;
    }

    return $BookingCopyWith<$Res>(_value.currentBooking!, (value) {
      return _then(_value.copyWith(currentBooking: value));
    });
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
      bool loadingMyBookings,
      Option<Either<BookingFailure, DriverRecord>> driverFoundOrFailure,
      List<Booking> bookings,
      Booking? currentBooking,
      Option<Either<BookingFailure, String>> bookingFailureOrSuccessOption});

  @override
  $BookingCopyWith<$Res>? get currentBooking;
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
    Object? loadingMyBookings = freezed,
    Object? driverFoundOrFailure = freezed,
    Object? bookings = freezed,
    Object? currentBooking = freezed,
    Object? bookingFailureOrSuccessOption = freezed,
  }) {
    return _then(_BookingState(
      bookingRide: bookingRide == freezed
          ? _value.bookingRide
          : bookingRide // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMyBookings: loadingMyBookings == freezed
          ? _value.loadingMyBookings
          : loadingMyBookings // ignore: cast_nullable_to_non_nullable
              as bool,
      driverFoundOrFailure: driverFoundOrFailure == freezed
          ? _value.driverFoundOrFailure
          : driverFoundOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<BookingFailure, DriverRecord>>,
      bookings: bookings == freezed
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
      currentBooking: currentBooking == freezed
          ? _value.currentBooking
          : currentBooking // ignore: cast_nullable_to_non_nullable
              as Booking?,
      bookingFailureOrSuccessOption: bookingFailureOrSuccessOption == freezed
          ? _value.bookingFailureOrSuccessOption
          : bookingFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BookingFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_BookingState implements _BookingState {
  const _$_BookingState(
      {required this.bookingRide,
      required this.loadingMyBookings,
      required this.driverFoundOrFailure,
      required this.bookings,
      this.currentBooking,
      required this.bookingFailureOrSuccessOption});

  @override
  final bool bookingRide;
  @override
  final bool loadingMyBookings;
  @override
  final Option<Either<BookingFailure, DriverRecord>> driverFoundOrFailure;
  @override
  final List<Booking> bookings;
  @override
  final Booking? currentBooking;
  @override
  final Option<Either<BookingFailure, String>> bookingFailureOrSuccessOption;

  @override
  String toString() {
    return 'BookingState(bookingRide: $bookingRide, loadingMyBookings: $loadingMyBookings, driverFoundOrFailure: $driverFoundOrFailure, bookings: $bookings, currentBooking: $currentBooking, bookingFailureOrSuccessOption: $bookingFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookingState &&
            const DeepCollectionEquality()
                .equals(other.bookingRide, bookingRide) &&
            const DeepCollectionEquality()
                .equals(other.loadingMyBookings, loadingMyBookings) &&
            const DeepCollectionEquality()
                .equals(other.driverFoundOrFailure, driverFoundOrFailure) &&
            const DeepCollectionEquality().equals(other.bookings, bookings) &&
            const DeepCollectionEquality()
                .equals(other.currentBooking, currentBooking) &&
            const DeepCollectionEquality().equals(
                other.bookingFailureOrSuccessOption,
                bookingFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bookingRide),
      const DeepCollectionEquality().hash(loadingMyBookings),
      const DeepCollectionEquality().hash(driverFoundOrFailure),
      const DeepCollectionEquality().hash(bookings),
      const DeepCollectionEquality().hash(currentBooking),
      const DeepCollectionEquality().hash(bookingFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$BookingStateCopyWith<_BookingState> get copyWith =>
      __$BookingStateCopyWithImpl<_BookingState>(this, _$identity);
}

abstract class _BookingState implements BookingState {
  const factory _BookingState(
      {required bool bookingRide,
      required bool loadingMyBookings,
      required Option<Either<BookingFailure, DriverRecord>>
          driverFoundOrFailure,
      required List<Booking> bookings,
      Booking? currentBooking,
      required Option<Either<BookingFailure, String>>
          bookingFailureOrSuccessOption}) = _$_BookingState;

  @override
  bool get bookingRide;
  @override
  bool get loadingMyBookings;
  @override
  Option<Either<BookingFailure, DriverRecord>> get driverFoundOrFailure;
  @override
  List<Booking> get bookings;
  @override
  Booking? get currentBooking;
  @override
  Option<Either<BookingFailure, String>> get bookingFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$BookingStateCopyWith<_BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}
