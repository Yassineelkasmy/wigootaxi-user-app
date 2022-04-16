import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/domain/geocoding/i_geocoding_repository.dart';
import 'package:taxidriver/domain/nearby_search/i_nearby_search_repository.dart';

class PickUpController extends StateNotifier<PickUpState> {
  PickUpController(
    this._nearbySearchRepository,
    this._geocodingRepository,
  ) : super(PickUpState.initial());
  final INearbySearchRepository _nearbySearchRepository;
  final IGeocodingRepository _geocodingRepository;

  Future mapEventToState(PickUpEvent pickUpEvent) {
    return pickUpEvent.map(
      startedTyping: (event) async {},
      nearbyQueryChanged: (event) async {
        state = state.copyWith(
          isNearbyPlacesLoading: true,
        );

        print(event.query);
        final nearBysearchSuccessOrFailure =
            await _nearbySearchRepository.nearbyPlaces(
          lat: event.lat,
          long: event.long,
          query: event.query,
        );
        nearBysearchSuccessOrFailure.fold((l) => null, (success) {
          state = state.copyWith(
            places: success,
          );
        });
        state = state.copyWith(
          isNearbyPlacesLoading: false,
        );
      },
      nearbyLocationsRequested: (event) async {
        state = state.copyWith(
          isNearbyPlacesLoading: true,
        );
        final nearBysearchSuccessOrFailure =
            await _nearbySearchRepository.nearbyPlaces(
          lat: event.lat,
          long: event.long,
        );
        nearBysearchSuccessOrFailure.fold((l) => null, (success) {
          state = state.copyWith(
            places: success,
          );
        });
        state = state.copyWith(
          isNearbyPlacesLoading: false,
        );
      },
      pickupChoosen: (_) async {},
      dropoffChoosen: (_) async {},
      reverseGecodingFromMapRequested: (event) async {
        state = state.copyWith(
          isGeocodingFromMapLoaidng: true,
        );
        final reverseGeocodingSuccessOrFailure =
            await _geocodingRepository.reverseGeocode(
          lat: event.lat,
          long: event.long,
        );

        reverseGeocodingSuccessOrFailure.fold(
          (failure) => print('errorrr'),
          (reverseGeocodingResult) {
            print(reverseGeocodingResult);
            state = state.copyWith(
              isGeocodingFromMapLoaidng: false,
              reverseGeocodingResult: reverseGeocodingResult,
            );
          },
        );
      },
    );
  }
}
