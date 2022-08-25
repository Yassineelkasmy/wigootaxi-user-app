import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/profile/domain/metrics.dart';
import 'package:taxidriver/profile/domain/user_driver.dart';
import 'package:taxidriver/ride/domain/ride.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    Metrics? metrics,
    required List<Ride> finishedRides,
    required List<Ride> userCancelledRides,
    required List<Ride> driverCancelledRides,
    required List<UserDriver> userDrivers,
    required bool isLoading,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        finishedRides: [],
        isLoading: false,
        userCancelledRides: [],
        driverCancelledRides: [],
        userDrivers: [],
      );
}
