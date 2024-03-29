// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pick_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PickUpStateTearOff {
  const _$PickUpStateTearOff();

  _PickUpState call(
      {required bool isGeocodingFromMapLoaidng,
      required bool isNearbyPlacesLoading,
      required String nearbyQuery,
      required List<Driver> nearbyDrivers,
      required Option<Either<NearbySearchFailure, List<NearbySearch>>>
          nearBysearchSuccessOrFailureOption,
      NearbySearch? dropoffPlace,
      NearbySearch? pickupPlace,
      NearbySearch? mainFormLocation,
      ReverseGeocodingResult? reverseGeocodingResult,
      required RideType rideType,
      DateTime? rideDateTime,
      required List<NearbySearch> places,
      required bool pickUpFompIsOpen,
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
      RideBooking? ride}) {
    return _PickUpState(
      isGeocodingFromMapLoaidng: isGeocodingFromMapLoaidng,
      isNearbyPlacesLoading: isNearbyPlacesLoading,
      nearbyQuery: nearbyQuery,
      nearbyDrivers: nearbyDrivers,
      nearBysearchSuccessOrFailureOption: nearBysearchSuccessOrFailureOption,
      dropoffPlace: dropoffPlace,
      pickupPlace: pickupPlace,
      mainFormLocation: mainFormLocation,
      reverseGeocodingResult: reverseGeocodingResult,
      rideType: rideType,
      rideDateTime: rideDateTime,
      places: places,
      pickUpFompIsOpen: pickUpFompIsOpen,
      isSwipping: isSwipping,
      cameraLat: cameraLat,
      cameraLong: cameraLong,
      userLat: userLat,
      userLong: userLong,
      dropOffChosen: dropOffChosen,
      pickUpChosen: pickUpChosen,
      loadingRideDetails: loadingRideDetails,
      cameraLatToMove: cameraLatToMove,
      cameraLongToMove: cameraLongToMove,
      ride: ride,
    );
  }
}

/// @nodoc
const $PickUpState = _$PickUpStateTearOff();

/// @nodoc
mixin _$PickUpState {
  bool get isGeocodingFromMapLoaidng => throw _privateConstructorUsedError;
  bool get isNearbyPlacesLoading => throw _privateConstructorUsedError;
  String get nearbyQuery => throw _privateConstructorUsedError;
  List<Driver> get nearbyDrivers => throw _privateConstructorUsedError;
  Option<Either<NearbySearchFailure, List<NearbySearch>>>
      get nearBysearchSuccessOrFailureOption =>
          throw _privateConstructorUsedError;
  NearbySearch? get dropoffPlace => throw _privateConstructorUsedError;
  NearbySearch? get pickupPlace => throw _privateConstructorUsedError;
  NearbySearch? get mainFormLocation => throw _privateConstructorUsedError;
  ReverseGeocodingResult? get reverseGeocodingResult =>
      throw _privateConstructorUsedError;
  RideType get rideType => throw _privateConstructorUsedError;
  DateTime? get rideDateTime => throw _privateConstructorUsedError;
  List<NearbySearch> get places => throw _privateConstructorUsedError;
  bool get pickUpFompIsOpen => throw _privateConstructorUsedError;
  bool get isSwipping => throw _privateConstructorUsedError;
  double? get cameraLat => throw _privateConstructorUsedError;
  double? get cameraLong => throw _privateConstructorUsedError;
  double? get userLat => throw _privateConstructorUsedError;
  double? get userLong => throw _privateConstructorUsedError;
  bool get dropOffChosen => throw _privateConstructorUsedError;
  bool get pickUpChosen => throw _privateConstructorUsedError;
  bool get loadingRideDetails => throw _privateConstructorUsedError;
  double? get cameraLatToMove => throw _privateConstructorUsedError;
  double? get cameraLongToMove => throw _privateConstructorUsedError;
  RideBooking? get ride => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickUpStateCopyWith<PickUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickUpStateCopyWith<$Res> {
  factory $PickUpStateCopyWith(
          PickUpState value, $Res Function(PickUpState) then) =
      _$PickUpStateCopyWithImpl<$Res>;
  $Res call(
      {bool isGeocodingFromMapLoaidng,
      bool isNearbyPlacesLoading,
      String nearbyQuery,
      List<Driver> nearbyDrivers,
      Option<Either<NearbySearchFailure, List<NearbySearch>>>
          nearBysearchSuccessOrFailureOption,
      NearbySearch? dropoffPlace,
      NearbySearch? pickupPlace,
      NearbySearch? mainFormLocation,
      ReverseGeocodingResult? reverseGeocodingResult,
      RideType rideType,
      DateTime? rideDateTime,
      List<NearbySearch> places,
      bool pickUpFompIsOpen,
      bool isSwipping,
      double? cameraLat,
      double? cameraLong,
      double? userLat,
      double? userLong,
      bool dropOffChosen,
      bool pickUpChosen,
      bool loadingRideDetails,
      double? cameraLatToMove,
      double? cameraLongToMove,
      RideBooking? ride});

  $NearbySearchCopyWith<$Res>? get dropoffPlace;
  $NearbySearchCopyWith<$Res>? get pickupPlace;
  $NearbySearchCopyWith<$Res>? get mainFormLocation;
  $ReverseGeocodingResultCopyWith<$Res>? get reverseGeocodingResult;
  $RideBookingCopyWith<$Res>? get ride;
}

/// @nodoc
class _$PickUpStateCopyWithImpl<$Res> implements $PickUpStateCopyWith<$Res> {
  _$PickUpStateCopyWithImpl(this._value, this._then);

  final PickUpState _value;
  // ignore: unused_field
  final $Res Function(PickUpState) _then;

  @override
  $Res call({
    Object? isGeocodingFromMapLoaidng = freezed,
    Object? isNearbyPlacesLoading = freezed,
    Object? nearbyQuery = freezed,
    Object? nearbyDrivers = freezed,
    Object? nearBysearchSuccessOrFailureOption = freezed,
    Object? dropoffPlace = freezed,
    Object? pickupPlace = freezed,
    Object? mainFormLocation = freezed,
    Object? reverseGeocodingResult = freezed,
    Object? rideType = freezed,
    Object? rideDateTime = freezed,
    Object? places = freezed,
    Object? pickUpFompIsOpen = freezed,
    Object? isSwipping = freezed,
    Object? cameraLat = freezed,
    Object? cameraLong = freezed,
    Object? userLat = freezed,
    Object? userLong = freezed,
    Object? dropOffChosen = freezed,
    Object? pickUpChosen = freezed,
    Object? loadingRideDetails = freezed,
    Object? cameraLatToMove = freezed,
    Object? cameraLongToMove = freezed,
    Object? ride = freezed,
  }) {
    return _then(_value.copyWith(
      isGeocodingFromMapLoaidng: isGeocodingFromMapLoaidng == freezed
          ? _value.isGeocodingFromMapLoaidng
          : isGeocodingFromMapLoaidng // ignore: cast_nullable_to_non_nullable
              as bool,
      isNearbyPlacesLoading: isNearbyPlacesLoading == freezed
          ? _value.isNearbyPlacesLoading
          : isNearbyPlacesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nearbyQuery: nearbyQuery == freezed
          ? _value.nearbyQuery
          : nearbyQuery // ignore: cast_nullable_to_non_nullable
              as String,
      nearbyDrivers: nearbyDrivers == freezed
          ? _value.nearbyDrivers
          : nearbyDrivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>,
      nearBysearchSuccessOrFailureOption: nearBysearchSuccessOrFailureOption ==
              freezed
          ? _value.nearBysearchSuccessOrFailureOption
          : nearBysearchSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NearbySearchFailure, List<NearbySearch>>>,
      dropoffPlace: dropoffPlace == freezed
          ? _value.dropoffPlace
          : dropoffPlace // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      pickupPlace: pickupPlace == freezed
          ? _value.pickupPlace
          : pickupPlace // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      mainFormLocation: mainFormLocation == freezed
          ? _value.mainFormLocation
          : mainFormLocation // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      reverseGeocodingResult: reverseGeocodingResult == freezed
          ? _value.reverseGeocodingResult
          : reverseGeocodingResult // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodingResult?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as RideType,
      rideDateTime: rideDateTime == freezed
          ? _value.rideDateTime
          : rideDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<NearbySearch>,
      pickUpFompIsOpen: pickUpFompIsOpen == freezed
          ? _value.pickUpFompIsOpen
          : pickUpFompIsOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      isSwipping: isSwipping == freezed
          ? _value.isSwipping
          : isSwipping // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraLat: cameraLat == freezed
          ? _value.cameraLat
          : cameraLat // ignore: cast_nullable_to_non_nullable
              as double?,
      cameraLong: cameraLong == freezed
          ? _value.cameraLong
          : cameraLong // ignore: cast_nullable_to_non_nullable
              as double?,
      userLat: userLat == freezed
          ? _value.userLat
          : userLat // ignore: cast_nullable_to_non_nullable
              as double?,
      userLong: userLong == freezed
          ? _value.userLong
          : userLong // ignore: cast_nullable_to_non_nullable
              as double?,
      dropOffChosen: dropOffChosen == freezed
          ? _value.dropOffChosen
          : dropOffChosen // ignore: cast_nullable_to_non_nullable
              as bool,
      pickUpChosen: pickUpChosen == freezed
          ? _value.pickUpChosen
          : pickUpChosen // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingRideDetails: loadingRideDetails == freezed
          ? _value.loadingRideDetails
          : loadingRideDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraLatToMove: cameraLatToMove == freezed
          ? _value.cameraLatToMove
          : cameraLatToMove // ignore: cast_nullable_to_non_nullable
              as double?,
      cameraLongToMove: cameraLongToMove == freezed
          ? _value.cameraLongToMove
          : cameraLongToMove // ignore: cast_nullable_to_non_nullable
              as double?,
      ride: ride == freezed
          ? _value.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as RideBooking?,
    ));
  }

  @override
  $NearbySearchCopyWith<$Res>? get dropoffPlace {
    if (_value.dropoffPlace == null) {
      return null;
    }

    return $NearbySearchCopyWith<$Res>(_value.dropoffPlace!, (value) {
      return _then(_value.copyWith(dropoffPlace: value));
    });
  }

  @override
  $NearbySearchCopyWith<$Res>? get pickupPlace {
    if (_value.pickupPlace == null) {
      return null;
    }

    return $NearbySearchCopyWith<$Res>(_value.pickupPlace!, (value) {
      return _then(_value.copyWith(pickupPlace: value));
    });
  }

  @override
  $NearbySearchCopyWith<$Res>? get mainFormLocation {
    if (_value.mainFormLocation == null) {
      return null;
    }

    return $NearbySearchCopyWith<$Res>(_value.mainFormLocation!, (value) {
      return _then(_value.copyWith(mainFormLocation: value));
    });
  }

  @override
  $ReverseGeocodingResultCopyWith<$Res>? get reverseGeocodingResult {
    if (_value.reverseGeocodingResult == null) {
      return null;
    }

    return $ReverseGeocodingResultCopyWith<$Res>(_value.reverseGeocodingResult!,
        (value) {
      return _then(_value.copyWith(reverseGeocodingResult: value));
    });
  }

  @override
  $RideBookingCopyWith<$Res>? get ride {
    if (_value.ride == null) {
      return null;
    }

    return $RideBookingCopyWith<$Res>(_value.ride!, (value) {
      return _then(_value.copyWith(ride: value));
    });
  }
}

/// @nodoc
abstract class _$PickUpStateCopyWith<$Res>
    implements $PickUpStateCopyWith<$Res> {
  factory _$PickUpStateCopyWith(
          _PickUpState value, $Res Function(_PickUpState) then) =
      __$PickUpStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isGeocodingFromMapLoaidng,
      bool isNearbyPlacesLoading,
      String nearbyQuery,
      List<Driver> nearbyDrivers,
      Option<Either<NearbySearchFailure, List<NearbySearch>>>
          nearBysearchSuccessOrFailureOption,
      NearbySearch? dropoffPlace,
      NearbySearch? pickupPlace,
      NearbySearch? mainFormLocation,
      ReverseGeocodingResult? reverseGeocodingResult,
      RideType rideType,
      DateTime? rideDateTime,
      List<NearbySearch> places,
      bool pickUpFompIsOpen,
      bool isSwipping,
      double? cameraLat,
      double? cameraLong,
      double? userLat,
      double? userLong,
      bool dropOffChosen,
      bool pickUpChosen,
      bool loadingRideDetails,
      double? cameraLatToMove,
      double? cameraLongToMove,
      RideBooking? ride});

  @override
  $NearbySearchCopyWith<$Res>? get dropoffPlace;
  @override
  $NearbySearchCopyWith<$Res>? get pickupPlace;
  @override
  $NearbySearchCopyWith<$Res>? get mainFormLocation;
  @override
  $ReverseGeocodingResultCopyWith<$Res>? get reverseGeocodingResult;
  @override
  $RideBookingCopyWith<$Res>? get ride;
}

/// @nodoc
class __$PickUpStateCopyWithImpl<$Res> extends _$PickUpStateCopyWithImpl<$Res>
    implements _$PickUpStateCopyWith<$Res> {
  __$PickUpStateCopyWithImpl(
      _PickUpState _value, $Res Function(_PickUpState) _then)
      : super(_value, (v) => _then(v as _PickUpState));

  @override
  _PickUpState get _value => super._value as _PickUpState;

  @override
  $Res call({
    Object? isGeocodingFromMapLoaidng = freezed,
    Object? isNearbyPlacesLoading = freezed,
    Object? nearbyQuery = freezed,
    Object? nearbyDrivers = freezed,
    Object? nearBysearchSuccessOrFailureOption = freezed,
    Object? dropoffPlace = freezed,
    Object? pickupPlace = freezed,
    Object? mainFormLocation = freezed,
    Object? reverseGeocodingResult = freezed,
    Object? rideType = freezed,
    Object? rideDateTime = freezed,
    Object? places = freezed,
    Object? pickUpFompIsOpen = freezed,
    Object? isSwipping = freezed,
    Object? cameraLat = freezed,
    Object? cameraLong = freezed,
    Object? userLat = freezed,
    Object? userLong = freezed,
    Object? dropOffChosen = freezed,
    Object? pickUpChosen = freezed,
    Object? loadingRideDetails = freezed,
    Object? cameraLatToMove = freezed,
    Object? cameraLongToMove = freezed,
    Object? ride = freezed,
  }) {
    return _then(_PickUpState(
      isGeocodingFromMapLoaidng: isGeocodingFromMapLoaidng == freezed
          ? _value.isGeocodingFromMapLoaidng
          : isGeocodingFromMapLoaidng // ignore: cast_nullable_to_non_nullable
              as bool,
      isNearbyPlacesLoading: isNearbyPlacesLoading == freezed
          ? _value.isNearbyPlacesLoading
          : isNearbyPlacesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      nearbyQuery: nearbyQuery == freezed
          ? _value.nearbyQuery
          : nearbyQuery // ignore: cast_nullable_to_non_nullable
              as String,
      nearbyDrivers: nearbyDrivers == freezed
          ? _value.nearbyDrivers
          : nearbyDrivers // ignore: cast_nullable_to_non_nullable
              as List<Driver>,
      nearBysearchSuccessOrFailureOption: nearBysearchSuccessOrFailureOption ==
              freezed
          ? _value.nearBysearchSuccessOrFailureOption
          : nearBysearchSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<NearbySearchFailure, List<NearbySearch>>>,
      dropoffPlace: dropoffPlace == freezed
          ? _value.dropoffPlace
          : dropoffPlace // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      pickupPlace: pickupPlace == freezed
          ? _value.pickupPlace
          : pickupPlace // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      mainFormLocation: mainFormLocation == freezed
          ? _value.mainFormLocation
          : mainFormLocation // ignore: cast_nullable_to_non_nullable
              as NearbySearch?,
      reverseGeocodingResult: reverseGeocodingResult == freezed
          ? _value.reverseGeocodingResult
          : reverseGeocodingResult // ignore: cast_nullable_to_non_nullable
              as ReverseGeocodingResult?,
      rideType: rideType == freezed
          ? _value.rideType
          : rideType // ignore: cast_nullable_to_non_nullable
              as RideType,
      rideDateTime: rideDateTime == freezed
          ? _value.rideDateTime
          : rideDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<NearbySearch>,
      pickUpFompIsOpen: pickUpFompIsOpen == freezed
          ? _value.pickUpFompIsOpen
          : pickUpFompIsOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      isSwipping: isSwipping == freezed
          ? _value.isSwipping
          : isSwipping // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraLat: cameraLat == freezed
          ? _value.cameraLat
          : cameraLat // ignore: cast_nullable_to_non_nullable
              as double?,
      cameraLong: cameraLong == freezed
          ? _value.cameraLong
          : cameraLong // ignore: cast_nullable_to_non_nullable
              as double?,
      userLat: userLat == freezed
          ? _value.userLat
          : userLat // ignore: cast_nullable_to_non_nullable
              as double?,
      userLong: userLong == freezed
          ? _value.userLong
          : userLong // ignore: cast_nullable_to_non_nullable
              as double?,
      dropOffChosen: dropOffChosen == freezed
          ? _value.dropOffChosen
          : dropOffChosen // ignore: cast_nullable_to_non_nullable
              as bool,
      pickUpChosen: pickUpChosen == freezed
          ? _value.pickUpChosen
          : pickUpChosen // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingRideDetails: loadingRideDetails == freezed
          ? _value.loadingRideDetails
          : loadingRideDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraLatToMove: cameraLatToMove == freezed
          ? _value.cameraLatToMove
          : cameraLatToMove // ignore: cast_nullable_to_non_nullable
              as double?,
      cameraLongToMove: cameraLongToMove == freezed
          ? _value.cameraLongToMove
          : cameraLongToMove // ignore: cast_nullable_to_non_nullable
              as double?,
      ride: ride == freezed
          ? _value.ride
          : ride // ignore: cast_nullable_to_non_nullable
              as RideBooking?,
    ));
  }
}

/// @nodoc

class _$_PickUpState implements _PickUpState {
  const _$_PickUpState(
      {required this.isGeocodingFromMapLoaidng,
      required this.isNearbyPlacesLoading,
      required this.nearbyQuery,
      required this.nearbyDrivers,
      required this.nearBysearchSuccessOrFailureOption,
      this.dropoffPlace,
      this.pickupPlace,
      this.mainFormLocation,
      this.reverseGeocodingResult,
      required this.rideType,
      this.rideDateTime,
      required this.places,
      required this.pickUpFompIsOpen,
      required this.isSwipping,
      this.cameraLat,
      this.cameraLong,
      this.userLat,
      this.userLong,
      required this.dropOffChosen,
      required this.pickUpChosen,
      required this.loadingRideDetails,
      this.cameraLatToMove,
      this.cameraLongToMove,
      this.ride});

  @override
  final bool isGeocodingFromMapLoaidng;
  @override
  final bool isNearbyPlacesLoading;
  @override
  final String nearbyQuery;
  @override
  final List<Driver> nearbyDrivers;
  @override
  final Option<Either<NearbySearchFailure, List<NearbySearch>>>
      nearBysearchSuccessOrFailureOption;
  @override
  final NearbySearch? dropoffPlace;
  @override
  final NearbySearch? pickupPlace;
  @override
  final NearbySearch? mainFormLocation;
  @override
  final ReverseGeocodingResult? reverseGeocodingResult;
  @override
  final RideType rideType;
  @override
  final DateTime? rideDateTime;
  @override
  final List<NearbySearch> places;
  @override
  final bool pickUpFompIsOpen;
  @override
  final bool isSwipping;
  @override
  final double? cameraLat;
  @override
  final double? cameraLong;
  @override
  final double? userLat;
  @override
  final double? userLong;
  @override
  final bool dropOffChosen;
  @override
  final bool pickUpChosen;
  @override
  final bool loadingRideDetails;
  @override
  final double? cameraLatToMove;
  @override
  final double? cameraLongToMove;
  @override
  final RideBooking? ride;

  @override
  String toString() {
    return 'PickUpState(isGeocodingFromMapLoaidng: $isGeocodingFromMapLoaidng, isNearbyPlacesLoading: $isNearbyPlacesLoading, nearbyQuery: $nearbyQuery, nearbyDrivers: $nearbyDrivers, nearBysearchSuccessOrFailureOption: $nearBysearchSuccessOrFailureOption, dropoffPlace: $dropoffPlace, pickupPlace: $pickupPlace, mainFormLocation: $mainFormLocation, reverseGeocodingResult: $reverseGeocodingResult, rideType: $rideType, rideDateTime: $rideDateTime, places: $places, pickUpFompIsOpen: $pickUpFompIsOpen, isSwipping: $isSwipping, cameraLat: $cameraLat, cameraLong: $cameraLong, userLat: $userLat, userLong: $userLong, dropOffChosen: $dropOffChosen, pickUpChosen: $pickUpChosen, loadingRideDetails: $loadingRideDetails, cameraLatToMove: $cameraLatToMove, cameraLongToMove: $cameraLongToMove, ride: $ride)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PickUpState &&
            const DeepCollectionEquality().equals(
                other.isGeocodingFromMapLoaidng, isGeocodingFromMapLoaidng) &&
            const DeepCollectionEquality()
                .equals(other.isNearbyPlacesLoading, isNearbyPlacesLoading) &&
            const DeepCollectionEquality()
                .equals(other.nearbyQuery, nearbyQuery) &&
            const DeepCollectionEquality()
                .equals(other.nearbyDrivers, nearbyDrivers) &&
            const DeepCollectionEquality().equals(
                other.nearBysearchSuccessOrFailureOption,
                nearBysearchSuccessOrFailureOption) &&
            const DeepCollectionEquality()
                .equals(other.dropoffPlace, dropoffPlace) &&
            const DeepCollectionEquality()
                .equals(other.pickupPlace, pickupPlace) &&
            const DeepCollectionEquality()
                .equals(other.mainFormLocation, mainFormLocation) &&
            const DeepCollectionEquality()
                .equals(other.reverseGeocodingResult, reverseGeocodingResult) &&
            const DeepCollectionEquality().equals(other.rideType, rideType) &&
            const DeepCollectionEquality()
                .equals(other.rideDateTime, rideDateTime) &&
            const DeepCollectionEquality().equals(other.places, places) &&
            const DeepCollectionEquality()
                .equals(other.pickUpFompIsOpen, pickUpFompIsOpen) &&
            const DeepCollectionEquality()
                .equals(other.isSwipping, isSwipping) &&
            const DeepCollectionEquality().equals(other.cameraLat, cameraLat) &&
            const DeepCollectionEquality()
                .equals(other.cameraLong, cameraLong) &&
            const DeepCollectionEquality().equals(other.userLat, userLat) &&
            const DeepCollectionEquality().equals(other.userLong, userLong) &&
            const DeepCollectionEquality()
                .equals(other.dropOffChosen, dropOffChosen) &&
            const DeepCollectionEquality()
                .equals(other.pickUpChosen, pickUpChosen) &&
            const DeepCollectionEquality()
                .equals(other.loadingRideDetails, loadingRideDetails) &&
            const DeepCollectionEquality()
                .equals(other.cameraLatToMove, cameraLatToMove) &&
            const DeepCollectionEquality()
                .equals(other.cameraLongToMove, cameraLongToMove) &&
            const DeepCollectionEquality().equals(other.ride, ride));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isGeocodingFromMapLoaidng),
        const DeepCollectionEquality().hash(isNearbyPlacesLoading),
        const DeepCollectionEquality().hash(nearbyQuery),
        const DeepCollectionEquality().hash(nearbyDrivers),
        const DeepCollectionEquality().hash(nearBysearchSuccessOrFailureOption),
        const DeepCollectionEquality().hash(dropoffPlace),
        const DeepCollectionEquality().hash(pickupPlace),
        const DeepCollectionEquality().hash(mainFormLocation),
        const DeepCollectionEquality().hash(reverseGeocodingResult),
        const DeepCollectionEquality().hash(rideType),
        const DeepCollectionEquality().hash(rideDateTime),
        const DeepCollectionEquality().hash(places),
        const DeepCollectionEquality().hash(pickUpFompIsOpen),
        const DeepCollectionEquality().hash(isSwipping),
        const DeepCollectionEquality().hash(cameraLat),
        const DeepCollectionEquality().hash(cameraLong),
        const DeepCollectionEquality().hash(userLat),
        const DeepCollectionEquality().hash(userLong),
        const DeepCollectionEquality().hash(dropOffChosen),
        const DeepCollectionEquality().hash(pickUpChosen),
        const DeepCollectionEquality().hash(loadingRideDetails),
        const DeepCollectionEquality().hash(cameraLatToMove),
        const DeepCollectionEquality().hash(cameraLongToMove),
        const DeepCollectionEquality().hash(ride)
      ]);

  @JsonKey(ignore: true)
  @override
  _$PickUpStateCopyWith<_PickUpState> get copyWith =>
      __$PickUpStateCopyWithImpl<_PickUpState>(this, _$identity);
}

abstract class _PickUpState implements PickUpState {
  const factory _PickUpState(
      {required bool isGeocodingFromMapLoaidng,
      required bool isNearbyPlacesLoading,
      required String nearbyQuery,
      required List<Driver> nearbyDrivers,
      required Option<Either<NearbySearchFailure, List<NearbySearch>>>
          nearBysearchSuccessOrFailureOption,
      NearbySearch? dropoffPlace,
      NearbySearch? pickupPlace,
      NearbySearch? mainFormLocation,
      ReverseGeocodingResult? reverseGeocodingResult,
      required RideType rideType,
      DateTime? rideDateTime,
      required List<NearbySearch> places,
      required bool pickUpFompIsOpen,
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
      RideBooking? ride}) = _$_PickUpState;

  @override
  bool get isGeocodingFromMapLoaidng;
  @override
  bool get isNearbyPlacesLoading;
  @override
  String get nearbyQuery;
  @override
  List<Driver> get nearbyDrivers;
  @override
  Option<Either<NearbySearchFailure, List<NearbySearch>>>
      get nearBysearchSuccessOrFailureOption;
  @override
  NearbySearch? get dropoffPlace;
  @override
  NearbySearch? get pickupPlace;
  @override
  NearbySearch? get mainFormLocation;
  @override
  ReverseGeocodingResult? get reverseGeocodingResult;
  @override
  RideType get rideType;
  @override
  DateTime? get rideDateTime;
  @override
  List<NearbySearch> get places;
  @override
  bool get pickUpFompIsOpen;
  @override
  bool get isSwipping;
  @override
  double? get cameraLat;
  @override
  double? get cameraLong;
  @override
  double? get userLat;
  @override
  double? get userLong;
  @override
  bool get dropOffChosen;
  @override
  bool get pickUpChosen;
  @override
  bool get loadingRideDetails;
  @override
  double? get cameraLatToMove;
  @override
  double? get cameraLongToMove;
  @override
  RideBooking? get ride;
  @override
  @JsonKey(ignore: true)
  _$PickUpStateCopyWith<_PickUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
