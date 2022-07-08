import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/booking/domain/booking.dart';
import 'package:taxidriver/driver/domain/driver_record.dart';
import 'package:taxidriver/ride/domain/ride.dart';

part 'ride_state.freezed.dart';

@freezed
class RideState with _$RideState {
  const factory RideState({
    Booking? currentBooking,
    DriverRecord? driverRecord,
    Ride? currentRide,
    required bool rideInitialized,
    required bool initializingRide,
  }) = _RideState;

  factory RideState.initial() => RideState(
        initializingRide: false,
        rideInitialized: false,
      );
}
