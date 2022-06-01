import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/booking/domain/booking_failure.dart';

part 'booking_state.freezed.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    required bool bookingRide,
    required Option<Either<BookingFailure, Unit>> bookingFailureOrSuccessOption,
  }) = _BookingState;

  factory BookingState.initial() => BookingState(
        bookingRide: false,
        bookingFailureOrSuccessOption: none(),
      );
}
