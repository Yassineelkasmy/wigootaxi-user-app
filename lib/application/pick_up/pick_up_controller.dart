import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/domain/nearby_search/i_nearby_search_repository.dart';

class PickUpController extends StateNotifier<PickUpState> {
  PickUpController(
    this._nearbySearchRepository,
  ) : super(PickUpState.initial());
  final INearbySearchRepository _nearbySearchRepository;

  Future mapEventToState(PickUpEvent pickUpEvent) {
    return pickUpEvent.map(
      startedTyping: (_) async {},
      nearbyQueryChanged: (_) async {},
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
          print(success);
        });
        state = state.copyWith(
          isNearbyPlacesLoading: false,
        );
      },
      pickupChoosen: (_) async {},
      dropoffChoosen: (_) async {},
    );
  }
}
