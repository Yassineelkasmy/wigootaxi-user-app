import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/domain/geocoding/reverse_geocoding.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search_failure.dart';
import 'package:taxidriver/booking/domain/ride.dart';

part 'pick_up_state.freezed.dart';

@freezed
class PickUpState with _$PickUpState {
  const factory PickUpState({
    required bool isGeocodingFromMapLoaidng,
    required bool isNearbyPlacesLoading,
    required String nearbyQuery,
    required Option<Either<NearbySearchFailure, List<NearbySearch>>>
        nearBysearchSuccessOrFailureOption,
    NearbySearch? dropoffPlace,
    NearbySearch? pickupPlace,
    NearbySearch? mainFormLocation,
    ReverseGeocodingResult? reverseGeocodingResult,
    required RideType rideType,
    DateTime? rideDateTime,
    required List<NearbySearch> places,
    required bool isSwipping,
    double? cameraLat,
    double? cameraLong,
    double? userLat,
    double? userLong,
    required bool dropOffChosen,
    required bool pickUpChosen,
    required bool loadingRideDetails,
    double? cameraLatToMove,
    double? cameraLongToMove,
    Ride? ride,
  }) = _PickUpState;

  factory PickUpState.initial() => PickUpState(
        isGeocodingFromMapLoaidng: false,
        isNearbyPlacesLoading: false,
        nearbyQuery: '',
        nearBysearchSuccessOrFailureOption: none(),
        rideType: RideType.now,
        places: [],
        dropOffChosen: false,
        pickUpChosen: false,
        isSwipping: false,
        loadingRideDetails: false,
      );
}
