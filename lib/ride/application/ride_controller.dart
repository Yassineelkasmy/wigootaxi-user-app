import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/ride/application/ride_event.dart';
import 'package:taxidriver/ride/application/ride_state.dart';
import 'package:taxidriver/ride/domain/ride.dart';

class RideController extends StateNotifier<RideState> {
  RideController(RideState state) : super(state);

  StreamSubscription<Ride>? subscription;

  Future mapEventToState(RideEvent event) {
    return event.map(
      rideAccepted: (event) async {},
      rideDenied: (event) async {},
      rideInitialized: (event) async {},
    );
  }
}
