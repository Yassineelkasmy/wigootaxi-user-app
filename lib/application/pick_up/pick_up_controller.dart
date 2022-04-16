import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/domain/geocoding/i_geocoding_repository.dart';
import 'package:taxidriver/domain/nearby_search/i_nearby_search_repository.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search.dart';
import 'package:taxidriver/domain/ride/ride.dart';

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
      pickupChoosen: (event) async {
        state = state.copyWith(
          pickupPlace: event.pickup,
        );
      },
      dropoffChoosen: (event) async {
        state = state.copyWith(
          dropoffPlace: event.dropoff,
        );
      },
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
      rideScheduled: (event) async {
        state = state.copyWith(
          rideType: RideType.shceduled,
          rideDateTime: event.rideDateTime,
        );
      },
      rideScheduledToNow: (_) async {
        state = state.copyWith(
          rideType: RideType.now,
          rideDateTime: null,
        );
      },
      cameraMoved: (event) async {
        state = state.copyWith(cameraLat: event.lat, cameraLong: event.long);
      },
      pickUpChosenFormMap: (event) async {
        final reverseGeocodingFromMapResult = state.reverseGeocodingResult;
        if (reverseGeocodingFromMapResult != null) {
          final reverseGeocodedPlace =
              reverseGeocodingFromMapResult.results.first;
          final pickUpPlace = NearbySearch(
              name: reverseGeocodedPlace.formattedAdress,
              placeId: reverseGeocodedPlace.placeId,
              vicinity: reverseGeocodedPlace.formattedAdress,
              geometry: reverseGeocodedPlace.geometry,
              types: reverseGeocodedPlace.types);
          state = state.copyWith(pickupPlace: pickUpPlace);
        }
      },
      dropOffChosenFromMap: (_) async {
        final reverseGeocodingFromMapResult = state.reverseGeocodingResult;
        if (reverseGeocodingFromMapResult != null) {
          final reverseGeocodedPlace =
              reverseGeocodingFromMapResult.results.first;
          final dropoffPlace = NearbySearch(
              name: reverseGeocodedPlace.formattedAdress,
              placeId: reverseGeocodedPlace.placeId,
              vicinity: reverseGeocodedPlace.formattedAdress,
              geometry: reverseGeocodedPlace.geometry,
              types: reverseGeocodedPlace.types);
          state = state.copyWith(dropoffPlace: dropoffPlace);
        }
      },
      pickUpChosenFormUserLocation: (event) async {},
    );
  }
}
