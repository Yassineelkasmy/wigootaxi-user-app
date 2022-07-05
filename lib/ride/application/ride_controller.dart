import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/ride/application/ride_event.dart';
import 'package:taxidriver/ride/application/ride_state.dart';

class RideController extends StateNotifier<RideState> {
  RideController(RideState state) : super(state);

  Future mapEventToState(RideEvent event) {
    return event.map(
      rideAccepted: (event) async {},
      rideDenied: (event) async {},
    );
  }
}
