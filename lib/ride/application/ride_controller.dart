import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/ride/application/ride_event.dart';
import 'package:taxidriver/ride/application/ride_state.dart';
import 'package:taxidriver/ride/domain/ride.dart';
import 'package:taxidriver/ride/services/ride_service.dart';

class RideController extends StateNotifier<RideState> {
  RideController(
    RideState state, {
    required this.rideId,
  }) : super(state);

  final String rideId;
  StreamSubscription<Ride>? rideSubscribtion;
  final RideService _rideService = RideService();

  initializeRideStream() async {
    rideSubscribtion?.cancel();
    rideSubscribtion = _rideService
        .rideStream(
      rideId: this.rideId,
    )
        .listen(
      (ride) {
        state = state.copyWith(currentRide: ride);
      },
    );
  }

  Future mapEventToState(RideEvent event) {
    return event.map(
      rideAccepted: (event) async {},
      rideDenied: (event) async {},
      rideInitialized: (event) async {},
      driverArrived: (event) async {},
      rideCancelledByDriver: (event) async {},
      rideCancelledByUser: (event) async {},
      rideFinished: (event) async {},
      userPicked: (event) async {},
    );
  }
}
