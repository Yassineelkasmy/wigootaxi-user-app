import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search.dart';

part 'pick_up_event.freezed.dart';

@freezed
class PickUpEvent with _$PickUpEvent {
  const factory PickUpEvent.startedTyping() = StartedTyping;
  const factory PickUpEvent.nearbyQueryChanged(
      String query, double lat, double long) = NearbyQueryChanged;
  const factory PickUpEvent.reverseGecodingFromMapRequested(
      double lat, double long) = ReverseGecodingFromMapRequested;
  const factory PickUpEvent.nearbyLocationsRequested(double lat, double long) =
      NearbyLocationsRequested;

  const factory PickUpEvent.pickupChoosen(NearbySearch pickup) = PickupChoosen;
  const factory PickUpEvent.dropoffChoosen(NearbySearch dropoff) =
      DropoffChoosen;
  const factory PickUpEvent.rideScheduled(DateTime rideDateTime) =
      RideScheduled;
  const factory PickUpEvent.rideScheduledToNow() = RideScheduledToNow;
  const factory PickUpEvent.cameraMoved(double lat, double long) = CameraMoved;
  const factory PickUpEvent.userLocationDetected(double lat, double long) =
      UserLocationDetected;
  const factory PickUpEvent.dropOffChosenFromMap() = DropOffChosenFromMap;
  const factory PickUpEvent.pickUpChosenFormMap() = PickUpChosenFormMap;
  const factory PickUpEvent.pickUpChosenFormUserLocation(
    double lat,
    double long,
  ) = PickUpChosenFormUserLocation;
  const factory PickUpEvent.pickUpRemoved() = PickUpRemoved;
  const factory PickUpEvent.dropOffRemoved() = DropOffRemoved;
}
