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
    required int driverDistanceFromStart,
    required int distanceTravelled,
    required int driverDistanceFromDestination,
    required int userrDistanceFromStart,
    required bool driverArrived,
    required bool rideStarted,
    required bool rideFinished,
    required bool driverArrivedToDestination,
    required bool isDriving,
    required bool rideCancelled,
    required bool driverCanCncell,
  }) = _RideState;

  factory RideState.initial() => RideState(
        initializingRide: false,
        rideInitialized: false,
        driverArrived: false,
        driverCanCncell: false,
        rideStarted: false,
        isDriving: false,
        distanceTravelled: 0,
        userrDistanceFromStart: 10000,
        driverDistanceFromStart: 10000,
        driverDistanceFromDestination: 10000,
        driverArrivedToDestination: false,
        rideCancelled: false,
        rideFinished: false,
      );
}
