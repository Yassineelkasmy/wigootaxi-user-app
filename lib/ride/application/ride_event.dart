import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/ride/domain/ride.dart';

part 'ride_event.freezed.dart';

@freezed
class RideEvent with _$RideEvent {
  const factory RideEvent.rideAccepted() = RideAccepted;
  const factory RideEvent.driverArrived(
    Ride ride,
    Duration driverArrivalDuration,
  ) = DriverArrived;
  const factory RideEvent.driverArrivedToDestination(
    Ride ride,
    Duration driverDestinationArrivalDuration,
  ) = DriverArrivedToDestination;
  const factory RideEvent.rideCancelledByUser() = RideCancelledByUser;
  const factory RideEvent.rideCancelledByDriver({
    required bool beforeTimeOut,
  }) = RideCancelledByDriver;
  const factory RideEvent.rideStarted() = RideStarted;
  const factory RideEvent.userPicked() = UserPicked;
  const factory RideEvent.rideFinished({
    required double totalPrice,
    required int totalDistance,
    required Duration totalDuration,
  }) = RideFinished;
  const factory RideEvent.rideDenied() = RideDnied;
  const factory RideEvent.driverCancellTimeOff() = DriverCancellTimeOff;
  const factory RideEvent.rideCleared() = RideCleared;
  const factory RideEvent.rideInitialized(String rideId) = RideInitilialized;
}
