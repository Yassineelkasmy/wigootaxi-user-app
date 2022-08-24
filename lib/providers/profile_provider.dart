import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/profile/application/profile_controller.dart';
import 'package:taxidriver/profile/application/profile_state.dart';
import 'package:taxidriver/profile/services/metrics_service.dart';
import 'package:taxidriver/profile/services/profile_service.dart';

final profileProvider = StateNotifierProvider<ProfileController, ProfileState>(
  (ref) {
    final profileService = ProfileService();
    final metricsService = MetricsService();
    final profileController = ProfileController(profileService, metricsService);
    return profileController;
  },
);
