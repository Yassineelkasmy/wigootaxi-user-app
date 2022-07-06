import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/ride/application/ride_controller.dart';
import 'package:taxidriver/ride/application/ride_state.dart';

final rideProvider = StateNotifierProvider<RideController, RideState>((ref) {
  final rideController = RideController();

  return rideController;
});
