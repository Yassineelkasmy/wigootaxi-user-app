import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/domain/geocoding/i_geocoding_repository.dart';
import 'package:taxidriver/domain/nearby_search/i_nearby_search_repository.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search.dart';
import 'package:taxidriver/infrastructure/matrix/google_matrix_service.dart';
import 'package:taxidriver/booking/domain/ride.dart';

class PickUpController extends StateNotifier<PickUpState> {
  PickUpController(
    this._nearbySearchRepository,
    this._geocodingRepository,
    this._googleMatrixService,
  ) : super(PickUpState.initial());
  final INearbySearchRepository _nearbySearchRepository;
  final IGeocodingRepository _geocodingRepository;
  final GoogleMatrixService _googleMatrixService;

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
      //This event will probably not be used
      pickupChoosen: (event) async {
        state = state.copyWith(
          pickupPlace: event.pickup,
          pickUpChosen: true,
          loadingRideDetails: true,
        );
        final matrixResponse = await _googleMatrixService.getMatrix(
          dropoffPlaceId: state.dropoffPlace!.placeId,
          pickupPlaceId: state.pickupPlace!.placeId,
        );
        matrixResponse.fold((failure) => null, (googleMatrix) {
          print(googleMatrix.rows);
          final ride = Ride(
            droppOff: state.dropoffPlace!,
            pickUp: state.pickupPlace!,
            type: state.rideType,
            googelMatrix: googleMatrix,
            distance: googleMatrix.rows.first.elements.first.distance.value,
            duration: googleMatrix.rows.first.elements.first.duration.value,
          );
          state.copyWith(ride: ride);
        });
        state.copyWith(loadingRideDetails: false);
      },
      //This event will probably not be used
      dropoffChoosen: (event) async {
        state = state.copyWith(
          dropoffPlace: event.dropoff,
          dropOffChosen: true,
        );
      },
      reverseGecodingFromMapRequested: (event) async {
        state = state.copyWith(
          isGeocodingFromMapLoaidng: true,
        );
        final reverseGeocodingSuccessOrFailure =
            await _geocodingRepository.reverseGeocode(
          lat: state.cameraLat!,
          long: state.cameraLong!,
        );

        reverseGeocodingSuccessOrFailure.fold(
          (failure) => null,
          (reverseGeocodingResult) {
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
        if (state.ride != null) {
          state = state.copyWith(
              ride: state.ride!.copyWith(
            date: event.rideDateTime,
            type: RideType.shceduled,
          ));
        }
      },
      rideScheduledToNow: (_) async {
        state = state.copyWith(
          rideType: RideType.now,
          rideDateTime: null,
        );
        if (state.ride != null) {
          state = state.copyWith(
              ride: state.ride!.copyWith(
            date: null,
            type: RideType.now,
          ));
        }
      },
      cameraMoved: (event) async {
        // if (state.cameraLat == null || state.cameraLong == null) {
        //   state = state.copyWith(cameraLat: event.lat, cameraLong: event.long);
        // } else {
        //   final distance = calculateDistance(
        //     event.lat,
        //     event.long,
        //     state.cameraLat,
        //     state.cameraLong,
        //   );
        //   print(distance);
        //   if (distance > .1) {
        //     state =
        //         state.copyWith(cameraLat: event.lat, cameraLong: event.long);
        //     mapEventToState(
        //       PickUpEvent.reverseGecodingFromMapRequested(
        //         event.lat,
        //         event.long,
        //       ),
        //     );
        //   }
        // }
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
            types: reverseGeocodedPlace.types,
          );
          state = state.copyWith(
            pickupPlace: pickUpPlace,
            pickUpChosen: true,
            loadingRideDetails: true,
          );

          final matrixResponse = await _googleMatrixService.getMatrix(
            dropoffPlaceId: state.dropoffPlace!.placeId,
            pickupPlaceId: state.pickupPlace!.placeId,
          );
          matrixResponse.fold((failure) => null, (googleMatrix) {
            final ride = Ride(
              droppOff: state.dropoffPlace!,
              pickUp: state.pickupPlace!,
              type: state.rideType,
              googelMatrix: googleMatrix,
              distance: googleMatrix.rows.first.elements.first.distance.value,
              duration: googleMatrix.rows.first.elements.first.duration.value,
            );
            state = state.copyWith(ride: ride);
          });
        }
        state = state.copyWith(loadingRideDetails: false);
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

          state = state.copyWith(
            dropoffPlace: dropoffPlace,
            dropOffChosen: true,
          );
        }
      },
      pickUpChosenFormUserLocation: (event) async {},
      pickUpRemoved: (_) async {
        state = state.copyWith(
          pickUpChosen: false,
        );
      },
      dropOffRemoved: (_) async {
        state = state.copyWith(
          dropOffChosen: false,
        );
      },
      userLocationDetected: (event) async {
        state = state.copyWith(
          userLat: event.lat,
          userLong: event.long,
        );
        mapEventToState(
          PickUpEvent.nearbyLocationsRequested(event.lat, event.long),
        );
        // mapEventToState(
        //   PickUpEvent.reverseGecodingFromMapRequested(
        //     state.cameraLat!,
        //     state.cameraLong!,
        //   ),
        // );

        state = state.copyWith(
          isGeocodingFromMapLoaidng: true,
        );
        final reverseGeocodingSuccessOrFailure =
            await _geocodingRepository.reverseGeocode(
          lat: state.userLat!,
          long: state.userLong!,
        );

        reverseGeocodingSuccessOrFailure.fold(
          (failure) => print('errorrr'),
          (reverseGeocodingResult) {
            state = state.copyWith(
              isGeocodingFromMapLoaidng: false,
              reverseGeocodingResult: reverseGeocodingResult,
            );
          },
        );
      },
      formCleared: (_) async {
        state = PickUpState.initial();
      },
      cameraMustMoveToRequsted: (event) async {
        state = state.copyWith(
          cameraLatToMove: event.lat,
          cameraLongToMove: event.long,
        );
      },
      dropOffCancelled: (event) async {
        state = state.copyWith(
          dropOffChosen: false,
          isSwipping: false,
        );
      },
      pickupCancelled: (event) async {
        state = state.copyWith(
          pickUpChosen: false,
          isSwipping: false,
          ride: null, //Very important
        );
      },
    );
  }
}

double calculateDistance(lat1, lon1, lat2, lon2) {
  var p = 0.017453292519943295;
  var c = cos;
  var a = 0.5 -
      c((lat2 - lat1) * p) / 2 +
      c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
  return 12742 * asin(sqrt(a));
}
