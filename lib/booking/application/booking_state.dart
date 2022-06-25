import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/booking/domain/booking.dart';
import 'package:taxidriver/booking/domain/booking_failure.dart';
import 'package:taxidriver/driver/domain/driver.dart';
import 'package:taxidriver/driver/domain/driver_record.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    required bool bookingRide,
    required bool loadingMyBookings,
    required Option<Either<BookingFailure, DriverRecord>> driverFoundOrFailure,
    required List<Booking> bookings,
    Booking? currentBooking,
    required Option<Either<BookingFailure, String>>
        bookingFailureOrSuccessOption,
  }) = _BookingState;

  factory BookingState.initial() => BookingState(
        bookingRide: false,
        loadingMyBookings: false,
        bookings: [],
        bookingFailureOrSuccessOption: none(),
        driverFoundOrFailure: none(),
      );
}
