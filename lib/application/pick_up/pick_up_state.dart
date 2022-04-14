import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search_failure.dart';

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
    required List<NearbySearch> places,
  }) = _PickUpState;

  factory PickUpState.initial() => PickUpState(
        isGeocodingFromMapLoaidng: false,
        isNearbyPlacesLoading: false,
        nearbyQuery: '',
        nearBysearchSuccessOrFailureOption: none(),
        places: [],
      );
}
