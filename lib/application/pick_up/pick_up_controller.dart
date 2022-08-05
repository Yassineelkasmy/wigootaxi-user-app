import 'dart:math';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/pick_up/pick_up_state.dart';
import 'package:taxidriver/domain/geocoding/i_geocoding_repository.dart';
import 'package:taxidriver/domain/nearby_search/i_nearby_search_repository.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search.dart';
import 'package:taxidriver/driver/domain/driver.dart';
import 'package:taxidriver/driver/services/driver_service.dart';
import 'package:taxidriver/infrastructure/matrix/google_matrix_service.dart';
import 'package:taxidriver/booking/domain/ride_booking.dart';

class PickUpController extends StateNotifier<PickUpState> {
  PickUpController(
    this._nearbySearchRepository,
    this._geocodingRepository,
    this._googleMatrixService,
    this._driverService,
  ) : super(PickUpState.initial()) {
    Timer.periodic(Duration(seconds: 5), (timer) {
      refreshActiveDrivers();
    });
  }
  final INearbySearchRepository _nearbySearchRepository;
  final IGeocodingRepository _geocodingRepository;
  final GoogleMatrixService _googleMatrixService;
  final DriverService _driverService;
  StreamSubscription<List<DocumentSnapshot<Object?>>>? _subscription;
  bool isOnlineDriver(Driver driver) {
    return driver.lastSeconds >
        (DateTime.now().millisecondsSinceEpoch / 1000).round() - 20;
  }

  intitializeStream() {
    _subscription?.cancel();
    _subscription = _driverService
        .nearbyDriversStream(
      lat: state.userLat!,
      lng: state.userLong!,
    )
        .listen(
      (docSnapshots) {
        List<Driver> nearbyDrivers = [];
        for (var doc in docSnapshots) {
          final location = doc.get('location')['geopoint'] as GeoPoint;
          int lastSeconds = 100;
          try {
            lastSeconds = doc.get('lastSeconds') as int;
          } catch (e) {}

          final driver = Driver(
            lat: location.latitude,
            lng: location.longitude,
            id: doc.id,
            lastSeconds: lastSeconds,
          );
          if (isOnlineDriver(driver)) {
            nearbyDrivers.add(driver);
          }
        }
        state = state.copyWith(nearbyDrivers: nearbyDrivers);

        print('drooooooovers');
      },
    );
  }

  refreshActiveDrivers() {
    final activeNearbyDrivers =
        state.nearbyDrivers.where((driver) => isOnlineDriver(driver));
    state = state.copyWith(nearbyDrivers: activeNearbyDrivers.toList());
  }

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
            final ride = RideBooking(
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
          state = state.copyWith(
            cameraLatToMove: state.userLat!,
            cameraLongToMove: state.userLong!,
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
              final ride = RideBooking(
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
            state = state.copyWith(
              cameraLatToMove: state.userLat!,
              cameraLongToMove: state.userLong!,
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
          intitializeStream();

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
        cleared: (event) async {
          state = PickUpState.initial();
        });
  }
}
