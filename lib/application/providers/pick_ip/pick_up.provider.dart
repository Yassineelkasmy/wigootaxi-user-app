import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/pick_up/pick_up_controller.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/domain/nearby_search/i_nearby_search_repository.dart';
import 'package:taxidriver/infrastructure/nearby_search/google_places_nearby_search.dart';

final googlePlacesNearbySearchProvider = Provider<INearbySearchRepository>(
  (ref) {
    final googlePlacesNearbySearch = GooglePlacesNearbySearch();
    return googlePlacesNearbySearch;
  },
);

final pickUpProvider =
    StateNotifierProvider<PickUpController, PickUpState>((ref) {
  final googlePlacesNearbySearch = ref.watch(googlePlacesNearbySearchProvider);
  final pickUpController = PickUpController(googlePlacesNearbySearch);
  return pickUpController;
});
