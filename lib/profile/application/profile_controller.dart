import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/booking/services/booking_service.dart';
import 'package:taxidriver/profile/application/profile_event.dart';
import 'package:taxidriver/profile/application/profile_state.dart';
import 'package:taxidriver/profile/services/metrics_service.dart';
import 'package:taxidriver/profile/services/profile_service.dart';

class ProfileController extends StateNotifier<ProfileState> {
  ProfileController(
      this._profileService, this._metricsService, this._bookingService)
      : super(ProfileState.initial()) {
    initilializeUserStream();
    mapEventToState(ProfileEvent.metricsRequested());
    refresh();
  }

  void refresh() {
    mapEventToState(ProfileEvent.finishedRidesRequested());
    mapEventToState(ProfileEvent.userCancelledRidesRequested());
    mapEventToState(ProfileEvent.driverCancelledRidesRequested());
    mapEventToState(ProfileEvent.myDriversRequested());
  }

  final ProfileService _profileService;
  final MetricsService _metricsService;
  final BookingService _bookingService;
  StreamSubscription? userSubscription;

  initilializeUserStream() {
    userSubscription?.cancel();
    userSubscription =
        _profileService.profileStream().listen((userProfile) async {
      if (userProfile.currentDriverId != null) {
        final driverFoundOrFailure = await _bookingService.getDriverRecord(
          driverId: userProfile.currentDriverId!,
        );

        driverFoundOrFailure.map(
          (driverRecord) => state = state.copyWith(
            driverRecord: driverRecord,
            userProfile: userProfile,
          ),
        );
      }

      state = state.copyWith(userProfile: userProfile);
      print("dddddddddddd$userProfile");
    });
  }

  Future mapEventToState(ProfileEvent event) {
    return event.map(
      metricsRequested: (event) async {
        final metricsOrFailure = await _metricsService.getMetrics();
        metricsOrFailure.map(
          (metrics) => state = state.copyWith(metrics: metrics),
        );
      },
      finishedRidesRequested: (event) async {
        final ridesOrFailure = await _profileService.getRidesWithCanncellOption(
          option: 'finished',
        );

        ridesOrFailure.map(
          (rides) => state = state.copyWith(finishedRides: rides),
        );
      },
      userCancelledRidesRequested: (event) async {
        final ridesOrFailure = await _profileService.getRidesWithCanncellOption(
          option: 'cancelledByUser',
        );

        ridesOrFailure.map(
          (rides) => state = state.copyWith(userCancelledRides: rides),
        );
      },
      driverCancelledRidesRequested: (event) async {
        final ridesOrFailure = await _profileService.getRidesWithCanncellOption(
          option: 'cancelledByDriver',
        );

        ridesOrFailure.map(
          (rides) => state = state.copyWith(driverCancelledRides: rides),
        );
      },
      myDriversRequested: (event) async {
        final myDriversOrFailure = await _profileService.getUserDrivers();
        myDriversOrFailure.map(
          (userDrivers) => state = state.copyWith(userDrivers: userDrivers),
        );
      },
    );
  }
}
