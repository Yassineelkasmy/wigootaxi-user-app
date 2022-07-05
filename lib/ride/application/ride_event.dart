import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_event.freezed.dart';

@freezed
class RideEvent with _$RideEvent {
  const factory RideEvent.rideAccepted() = RideAccepted;
  const factory RideEvent.rideDenied() = RideDnied;
  const factory RideEvent.rideInitialized() = RideInitilialized;
}
