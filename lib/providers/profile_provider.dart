import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/booking/services/booking_service.dart';
import 'package:taxidriver/profile/application/profile_controller.dart';
import 'package:taxidriver/profile/application/profile_state.dart';
import 'package:taxidriver/profile/services/metrics_service.dart';
import 'package:taxidriver/profile/services/profile_service.dart';

final profileProvider =
    StateNotifierProvider.autoDispose<ProfileController, ProfileState>(
  (ref) {
    final profileService = ProfileService();
    final metricsService = MetricsService();
    final bookingService = BookingService();
    final profileController = ProfileController(
      profileService,
      metricsService,
      bookingService,
    );
    return profileController;
  },
);
