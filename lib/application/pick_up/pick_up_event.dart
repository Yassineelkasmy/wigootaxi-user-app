import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pick_up_event.freezed.dart';

@freezed
class PickUpEvent with _$PickUpEvent {
  const factory PickUpEvent.startedTyping() = StartedTyping;
  const factory PickUpEvent.queryChanged(String query) = QueryChanged;
  const factory PickUpEvent.nearbyLocationsRequested() =
      NearbyLocationsRequested;

  const factory PickUpEvent.startLocationPicked() = StartDestinationPicked;
  const factory PickUpEvent.destinationLocationPicked() =
      DestinationLocationPicked;
}
