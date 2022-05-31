import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/pick_up/pick_up_controller.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/domain/geocoding/i_geocoding_repository.dart';
import 'package:taxidriver/domain/nearby_search/i_nearby_search_repository.dart';
import 'package:taxidriver/infrastructure/directions/google_places_directions.dart';
import 'package:taxidriver/infrastructure/geocoding/google_places_geocoding.dart';
import 'package:taxidriver/infrastructure/matrix/google_matrix_service.dart';
import 'package:taxidriver/infrastructure/nearby_search/google_places_nearby_search.dart';

final googlePlacesNearbySearchProvider = Provider<INearbySearchRepository>(
  (ref) {
    final googlePlacesNearbySearch = GooglePlacesNearbySearch();
    return googlePlacesNearbySearch;
  },
);

final googlePlacesGeocodingProvider = Provider<IGeocodingRepository>(
  (ref) {
    final googlePlacesGeocoding = GooglePlacesGeocoding();
    return googlePlacesGeocoding;
  },
);
final googlePlacesDirectionsProvider =
    Provider<GooglePlacesDirectionsRepository>(
  (ref) {
    final googlePlacesDirections = GooglePlacesDirectionsRepository();
    return googlePlacesDirections;
  },
);
final pickUpProvider =
    StateNotifierProvider<PickUpController, PickUpState>((ref) {
  final googlePlacesNearbySearch = ref.watch(googlePlacesNearbySearchProvider);
  final googlePlacesGeocoding = ref.watch(googlePlacesGeocodingProvider);
  final googleMatrixService = GoogleMatrixService();
  final pickUpController = PickUpController(
    googlePlacesNearbySearch,
    googlePlacesGeocoding,
    googleMatrixService,
  );
  return pickUpController;
});
