import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/profile/application/profile_event.dart';
import 'package:taxidriver/profile/application/profile_state.dart';
import 'package:taxidriver/profile/services/metrics_service.dart';
import 'package:taxidriver/profile/services/profile_service.dart';

class ProfileController extends StateNotifier<ProfileState> {
  ProfileController(this._profileService, this._metricsService)
      : super(ProfileState.initial()) {
    mapEventToState(ProfileEvent.metricsRequested());
    refresh();
  }

  void refresh() {
    mapEventToState(ProfileEvent.finishedRidesRequested());
    mapEventToState(ProfileEvent.userCancelledRidesRequested());
    mapEventToState(ProfileEvent.driverCancelledRidesRequested());
  }

  final ProfileService _profileService;
  final MetricsService _metricsService;

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
    );
  }
}
