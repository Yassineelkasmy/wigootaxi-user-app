import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/location/location_controller.dart';
import 'package:taxidriver/application/location/location_event.dart';
import 'package:taxidriver/application/location/location_state.dart';

final locationProvider =
    StateNotifierProvider<LocationController, LocationState>(
  (ref) {
    final locationController = LocationController();
    return locationController
      ..mapEventToState(
        const LocationEvent.locationRequested(),
      );
  },
);
