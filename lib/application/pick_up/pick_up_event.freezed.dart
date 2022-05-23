// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pick_up_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PickUpEventTearOff {
  const _$PickUpEventTearOff();

  StartedTyping startedTyping() {
    return const StartedTyping();
  }

  NearbyQueryChanged nearbyQueryChanged(String query, double lat, double long) {
    return NearbyQueryChanged(
      query,
      lat,
      long,
    );
  }

  ReverseGecodingFromMapRequested reverseGecodingFromMapRequested() {
    return const ReverseGecodingFromMapRequested();
  }

  NearbyLocationsRequested nearbyLocationsRequested(double lat, double long) {
    return NearbyLocationsRequested(
      lat,
      long,
    );
  }

  PickupChoosen pickupChoosen(NearbySearch pickup) {
    return PickupChoosen(
      pickup,
    );
  }

  DropoffChoosen dropoffChoosen(NearbySearch dropoff) {
    return DropoffChoosen(
      dropoff,
    );
  }

  RideScheduled rideScheduled(DateTime rideDateTime) {
    return RideScheduled(
      rideDateTime,
    );
  }

  RideScheduledToNow rideScheduledToNow() {
    return const RideScheduledToNow();
  }

  CameraMoved cameraMoved(double lat, double long) {
    return CameraMoved(
      lat,
      long,
    );
  }

  UserLocationDetected userLocationDetected(double lat, double long) {
    return UserLocationDetected(
      lat,
      long,
    );
  }

  DropOffChosenFromMap dropOffChosenFromMap() {
    return const DropOffChosenFromMap();
  }

  PickUpChosenFormMap pickUpChosenFormMap() {
    return const PickUpChosenFormMap();
  }

  PickUpChosenFormUserLocation pickUpChosenFormUserLocation(
      double lat, double long) {
    return PickUpChosenFormUserLocation(
      lat,
      long,
    );
  }

  PickUpRemoved pickUpRemoved() {
    return const PickUpRemoved();
  }

  DropOffRemoved dropOffRemoved() {
    return const DropOffRemoved();
  }

  FormCleared formCleared() {
    return const FormCleared();
  }

  DropoffCancelled dropOffCancelled() {
    return const DropoffCancelled();
  }

  PickUpCancelled pickupCancelled() {
    return const PickUpCancelled();
  }

  CametaMustMoveToRequested cameraMustMoveToRequsted(double lat, double long) {
    return CametaMustMoveToRequested(
      lat,
      long,
    );
  }
}

/// @nodoc
const $PickUpEvent = _$PickUpEventTearOff();

/// @nodoc
mixin _$PickUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickUpEventCopyWith<$Res> {
  factory $PickUpEventCopyWith(
          PickUpEvent value, $Res Function(PickUpEvent) then) =
      _$PickUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickUpEventCopyWithImpl<$Res> implements $PickUpEventCopyWith<$Res> {
  _$PickUpEventCopyWithImpl(this._value, this._then);

  final PickUpEvent _value;
  // ignore: unused_field
  final $Res Function(PickUpEvent) _then;
}

/// @nodoc
abstract class $StartedTypingCopyWith<$Res> {
  factory $StartedTypingCopyWith(
          StartedTyping value, $Res Function(StartedTyping) then) =
      _$StartedTypingCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedTypingCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $StartedTypingCopyWith<$Res> {
  _$StartedTypingCopyWithImpl(
      StartedTyping _value, $Res Function(StartedTyping) _then)
      : super(_value, (v) => _then(v as StartedTyping));

  @override
  StartedTyping get _value => super._value as StartedTyping;
}

/// @nodoc

class _$StartedTyping with DiagnosticableTreeMixin implements StartedTyping {
  const _$StartedTyping();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.startedTyping()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PickUpEvent.startedTyping'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StartedTyping);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return startedTyping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return startedTyping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (startedTyping != null) {
      return startedTyping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return startedTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return startedTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (startedTyping != null) {
      return startedTyping(this);
    }
    return orElse();
  }
}

abstract class StartedTyping implements PickUpEvent {
  const factory StartedTyping() = _$StartedTyping;
}

/// @nodoc
abstract class $NearbyQueryChangedCopyWith<$Res> {
  factory $NearbyQueryChangedCopyWith(
          NearbyQueryChanged value, $Res Function(NearbyQueryChanged) then) =
      _$NearbyQueryChangedCopyWithImpl<$Res>;
  $Res call({String query, double lat, double long});
}

/// @nodoc
class _$NearbyQueryChangedCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $NearbyQueryChangedCopyWith<$Res> {
  _$NearbyQueryChangedCopyWithImpl(
      NearbyQueryChanged _value, $Res Function(NearbyQueryChanged) _then)
      : super(_value, (v) => _then(v as NearbyQueryChanged));

  @override
  NearbyQueryChanged get _value => super._value as NearbyQueryChanged;

  @override
  $Res call({
    Object? query = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(NearbyQueryChanged(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$NearbyQueryChanged
    with DiagnosticableTreeMixin
    implements NearbyQueryChanged {
  const _$NearbyQueryChanged(this.query, this.lat, this.long);

  @override
  final String query;
  @override
  final double lat;
  @override
  final double long;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.nearbyQueryChanged(query: $query, lat: $lat, long: $long)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.nearbyQueryChanged'))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NearbyQueryChanged &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long));

  @JsonKey(ignore: true)
  @override
  $NearbyQueryChangedCopyWith<NearbyQueryChanged> get copyWith =>
      _$NearbyQueryChangedCopyWithImpl<NearbyQueryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return nearbyQueryChanged(query, lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return nearbyQueryChanged?.call(query, lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (nearbyQueryChanged != null) {
      return nearbyQueryChanged(query, lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return nearbyQueryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return nearbyQueryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (nearbyQueryChanged != null) {
      return nearbyQueryChanged(this);
    }
    return orElse();
  }
}

abstract class NearbyQueryChanged implements PickUpEvent {
  const factory NearbyQueryChanged(String query, double lat, double long) =
      _$NearbyQueryChanged;

  String get query;
  double get lat;
  double get long;
  @JsonKey(ignore: true)
  $NearbyQueryChangedCopyWith<NearbyQueryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReverseGecodingFromMapRequestedCopyWith<$Res> {
  factory $ReverseGecodingFromMapRequestedCopyWith(
          ReverseGecodingFromMapRequested value,
          $Res Function(ReverseGecodingFromMapRequested) then) =
      _$ReverseGecodingFromMapRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReverseGecodingFromMapRequestedCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $ReverseGecodingFromMapRequestedCopyWith<$Res> {
  _$ReverseGecodingFromMapRequestedCopyWithImpl(
      ReverseGecodingFromMapRequested _value,
      $Res Function(ReverseGecodingFromMapRequested) _then)
      : super(_value, (v) => _then(v as ReverseGecodingFromMapRequested));

  @override
  ReverseGecodingFromMapRequested get _value =>
      super._value as ReverseGecodingFromMapRequested;
}

/// @nodoc

class _$ReverseGecodingFromMapRequested
    with DiagnosticableTreeMixin
    implements ReverseGecodingFromMapRequested {
  const _$ReverseGecodingFromMapRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.reverseGecodingFromMapRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PickUpEvent.reverseGecodingFromMapRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseGecodingFromMapRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return reverseGecodingFromMapRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return reverseGecodingFromMapRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (reverseGecodingFromMapRequested != null) {
      return reverseGecodingFromMapRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return reverseGecodingFromMapRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return reverseGecodingFromMapRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (reverseGecodingFromMapRequested != null) {
      return reverseGecodingFromMapRequested(this);
    }
    return orElse();
  }
}

abstract class ReverseGecodingFromMapRequested implements PickUpEvent {
  const factory ReverseGecodingFromMapRequested() =
      _$ReverseGecodingFromMapRequested;
}

/// @nodoc
abstract class $NearbyLocationsRequestedCopyWith<$Res> {
  factory $NearbyLocationsRequestedCopyWith(NearbyLocationsRequested value,
          $Res Function(NearbyLocationsRequested) then) =
      _$NearbyLocationsRequestedCopyWithImpl<$Res>;
  $Res call({double lat, double long});
}

/// @nodoc
class _$NearbyLocationsRequestedCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $NearbyLocationsRequestedCopyWith<$Res> {
  _$NearbyLocationsRequestedCopyWithImpl(NearbyLocationsRequested _value,
      $Res Function(NearbyLocationsRequested) _then)
      : super(_value, (v) => _then(v as NearbyLocationsRequested));

  @override
  NearbyLocationsRequested get _value =>
      super._value as NearbyLocationsRequested;

  @override
  $Res call({
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(NearbyLocationsRequested(
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$NearbyLocationsRequested
    with DiagnosticableTreeMixin
    implements NearbyLocationsRequested {
  const _$NearbyLocationsRequested(this.lat, this.long);

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.nearbyLocationsRequested(lat: $lat, long: $long)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.nearbyLocationsRequested'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NearbyLocationsRequested &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long));

  @JsonKey(ignore: true)
  @override
  $NearbyLocationsRequestedCopyWith<NearbyLocationsRequested> get copyWith =>
      _$NearbyLocationsRequestedCopyWithImpl<NearbyLocationsRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return nearbyLocationsRequested(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return nearbyLocationsRequested?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (nearbyLocationsRequested != null) {
      return nearbyLocationsRequested(lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return nearbyLocationsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return nearbyLocationsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (nearbyLocationsRequested != null) {
      return nearbyLocationsRequested(this);
    }
    return orElse();
  }
}

abstract class NearbyLocationsRequested implements PickUpEvent {
  const factory NearbyLocationsRequested(double lat, double long) =
      _$NearbyLocationsRequested;

  double get lat;
  double get long;
  @JsonKey(ignore: true)
  $NearbyLocationsRequestedCopyWith<NearbyLocationsRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupChoosenCopyWith<$Res> {
  factory $PickupChoosenCopyWith(
          PickupChoosen value, $Res Function(PickupChoosen) then) =
      _$PickupChoosenCopyWithImpl<$Res>;
  $Res call({NearbySearch pickup});

  $NearbySearchCopyWith<$Res> get pickup;
}

/// @nodoc
class _$PickupChoosenCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $PickupChoosenCopyWith<$Res> {
  _$PickupChoosenCopyWithImpl(
      PickupChoosen _value, $Res Function(PickupChoosen) _then)
      : super(_value, (v) => _then(v as PickupChoosen));

  @override
  PickupChoosen get _value => super._value as PickupChoosen;

  @override
  $Res call({
    Object? pickup = freezed,
  }) {
    return _then(PickupChoosen(
      pickup == freezed
          ? _value.pickup
          : pickup // ignore: cast_nullable_to_non_nullable
              as NearbySearch,
    ));
  }

  @override
  $NearbySearchCopyWith<$Res> get pickup {
    return $NearbySearchCopyWith<$Res>(_value.pickup, (value) {
      return _then(_value.copyWith(pickup: value));
    });
  }
}

/// @nodoc

class _$PickupChoosen with DiagnosticableTreeMixin implements PickupChoosen {
  const _$PickupChoosen(this.pickup);

  @override
  final NearbySearch pickup;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.pickupChoosen(pickup: $pickup)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.pickupChoosen'))
      ..add(DiagnosticsProperty('pickup', pickup));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PickupChoosen &&
            const DeepCollectionEquality().equals(other.pickup, pickup));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pickup));

  @JsonKey(ignore: true)
  @override
  $PickupChoosenCopyWith<PickupChoosen> get copyWith =>
      _$PickupChoosenCopyWithImpl<PickupChoosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return pickupChoosen(pickup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return pickupChoosen?.call(pickup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickupChoosen != null) {
      return pickupChoosen(pickup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return pickupChoosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return pickupChoosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickupChoosen != null) {
      return pickupChoosen(this);
    }
    return orElse();
  }
}

abstract class PickupChoosen implements PickUpEvent {
  const factory PickupChoosen(NearbySearch pickup) = _$PickupChoosen;

  NearbySearch get pickup;
  @JsonKey(ignore: true)
  $PickupChoosenCopyWith<PickupChoosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropoffChoosenCopyWith<$Res> {
  factory $DropoffChoosenCopyWith(
          DropoffChoosen value, $Res Function(DropoffChoosen) then) =
      _$DropoffChoosenCopyWithImpl<$Res>;
  $Res call({NearbySearch dropoff});

  $NearbySearchCopyWith<$Res> get dropoff;
}

/// @nodoc
class _$DropoffChoosenCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $DropoffChoosenCopyWith<$Res> {
  _$DropoffChoosenCopyWithImpl(
      DropoffChoosen _value, $Res Function(DropoffChoosen) _then)
      : super(_value, (v) => _then(v as DropoffChoosen));

  @override
  DropoffChoosen get _value => super._value as DropoffChoosen;

  @override
  $Res call({
    Object? dropoff = freezed,
  }) {
    return _then(DropoffChoosen(
      dropoff == freezed
          ? _value.dropoff
          : dropoff // ignore: cast_nullable_to_non_nullable
              as NearbySearch,
    ));
  }

  @override
  $NearbySearchCopyWith<$Res> get dropoff {
    return $NearbySearchCopyWith<$Res>(_value.dropoff, (value) {
      return _then(_value.copyWith(dropoff: value));
    });
  }
}

/// @nodoc

class _$DropoffChoosen with DiagnosticableTreeMixin implements DropoffChoosen {
  const _$DropoffChoosen(this.dropoff);

  @override
  final NearbySearch dropoff;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.dropoffChoosen(dropoff: $dropoff)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.dropoffChoosen'))
      ..add(DiagnosticsProperty('dropoff', dropoff));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DropoffChoosen &&
            const DeepCollectionEquality().equals(other.dropoff, dropoff));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(dropoff));

  @JsonKey(ignore: true)
  @override
  $DropoffChoosenCopyWith<DropoffChoosen> get copyWith =>
      _$DropoffChoosenCopyWithImpl<DropoffChoosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return dropoffChoosen(dropoff);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return dropoffChoosen?.call(dropoff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (dropoffChoosen != null) {
      return dropoffChoosen(dropoff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return dropoffChoosen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return dropoffChoosen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (dropoffChoosen != null) {
      return dropoffChoosen(this);
    }
    return orElse();
  }
}

abstract class DropoffChoosen implements PickUpEvent {
  const factory DropoffChoosen(NearbySearch dropoff) = _$DropoffChoosen;

  NearbySearch get dropoff;
  @JsonKey(ignore: true)
  $DropoffChoosenCopyWith<DropoffChoosen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideScheduledCopyWith<$Res> {
  factory $RideScheduledCopyWith(
          RideScheduled value, $Res Function(RideScheduled) then) =
      _$RideScheduledCopyWithImpl<$Res>;
  $Res call({DateTime rideDateTime});
}

/// @nodoc
class _$RideScheduledCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $RideScheduledCopyWith<$Res> {
  _$RideScheduledCopyWithImpl(
      RideScheduled _value, $Res Function(RideScheduled) _then)
      : super(_value, (v) => _then(v as RideScheduled));

  @override
  RideScheduled get _value => super._value as RideScheduled;

  @override
  $Res call({
    Object? rideDateTime = freezed,
  }) {
    return _then(RideScheduled(
      rideDateTime == freezed
          ? _value.rideDateTime
          : rideDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$RideScheduled with DiagnosticableTreeMixin implements RideScheduled {
  const _$RideScheduled(this.rideDateTime);

  @override
  final DateTime rideDateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.rideScheduled(rideDateTime: $rideDateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.rideScheduled'))
      ..add(DiagnosticsProperty('rideDateTime', rideDateTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideScheduled &&
            const DeepCollectionEquality()
                .equals(other.rideDateTime, rideDateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rideDateTime));

  @JsonKey(ignore: true)
  @override
  $RideScheduledCopyWith<RideScheduled> get copyWith =>
      _$RideScheduledCopyWithImpl<RideScheduled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return rideScheduled(rideDateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return rideScheduled?.call(rideDateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (rideScheduled != null) {
      return rideScheduled(rideDateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return rideScheduled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return rideScheduled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (rideScheduled != null) {
      return rideScheduled(this);
    }
    return orElse();
  }
}

abstract class RideScheduled implements PickUpEvent {
  const factory RideScheduled(DateTime rideDateTime) = _$RideScheduled;

  DateTime get rideDateTime;
  @JsonKey(ignore: true)
  $RideScheduledCopyWith<RideScheduled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideScheduledToNowCopyWith<$Res> {
  factory $RideScheduledToNowCopyWith(
          RideScheduledToNow value, $Res Function(RideScheduledToNow) then) =
      _$RideScheduledToNowCopyWithImpl<$Res>;
}

/// @nodoc
class _$RideScheduledToNowCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $RideScheduledToNowCopyWith<$Res> {
  _$RideScheduledToNowCopyWithImpl(
      RideScheduledToNow _value, $Res Function(RideScheduledToNow) _then)
      : super(_value, (v) => _then(v as RideScheduledToNow));

  @override
  RideScheduledToNow get _value => super._value as RideScheduledToNow;
}

/// @nodoc

class _$RideScheduledToNow
    with DiagnosticableTreeMixin
    implements RideScheduledToNow {
  const _$RideScheduledToNow();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.rideScheduledToNow()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.rideScheduledToNow'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RideScheduledToNow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return rideScheduledToNow();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return rideScheduledToNow?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (rideScheduledToNow != null) {
      return rideScheduledToNow();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return rideScheduledToNow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return rideScheduledToNow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (rideScheduledToNow != null) {
      return rideScheduledToNow(this);
    }
    return orElse();
  }
}

abstract class RideScheduledToNow implements PickUpEvent {
  const factory RideScheduledToNow() = _$RideScheduledToNow;
}

/// @nodoc
abstract class $CameraMovedCopyWith<$Res> {
  factory $CameraMovedCopyWith(
          CameraMoved value, $Res Function(CameraMoved) then) =
      _$CameraMovedCopyWithImpl<$Res>;
  $Res call({double lat, double long});
}

/// @nodoc
class _$CameraMovedCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $CameraMovedCopyWith<$Res> {
  _$CameraMovedCopyWithImpl(
      CameraMoved _value, $Res Function(CameraMoved) _then)
      : super(_value, (v) => _then(v as CameraMoved));

  @override
  CameraMoved get _value => super._value as CameraMoved;

  @override
  $Res call({
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(CameraMoved(
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CameraMoved with DiagnosticableTreeMixin implements CameraMoved {
  const _$CameraMoved(this.lat, this.long);

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.cameraMoved(lat: $lat, long: $long)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.cameraMoved'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CameraMoved &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long));

  @JsonKey(ignore: true)
  @override
  $CameraMovedCopyWith<CameraMoved> get copyWith =>
      _$CameraMovedCopyWithImpl<CameraMoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return cameraMoved(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return cameraMoved?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (cameraMoved != null) {
      return cameraMoved(lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return cameraMoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return cameraMoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (cameraMoved != null) {
      return cameraMoved(this);
    }
    return orElse();
  }
}

abstract class CameraMoved implements PickUpEvent {
  const factory CameraMoved(double lat, double long) = _$CameraMoved;

  double get lat;
  double get long;
  @JsonKey(ignore: true)
  $CameraMovedCopyWith<CameraMoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLocationDetectedCopyWith<$Res> {
  factory $UserLocationDetectedCopyWith(UserLocationDetected value,
          $Res Function(UserLocationDetected) then) =
      _$UserLocationDetectedCopyWithImpl<$Res>;
  $Res call({double lat, double long});
}

/// @nodoc
class _$UserLocationDetectedCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $UserLocationDetectedCopyWith<$Res> {
  _$UserLocationDetectedCopyWithImpl(
      UserLocationDetected _value, $Res Function(UserLocationDetected) _then)
      : super(_value, (v) => _then(v as UserLocationDetected));

  @override
  UserLocationDetected get _value => super._value as UserLocationDetected;

  @override
  $Res call({
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(UserLocationDetected(
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UserLocationDetected
    with DiagnosticableTreeMixin
    implements UserLocationDetected {
  const _$UserLocationDetected(this.lat, this.long);

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.userLocationDetected(lat: $lat, long: $long)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.userLocationDetected'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserLocationDetected &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long));

  @JsonKey(ignore: true)
  @override
  $UserLocationDetectedCopyWith<UserLocationDetected> get copyWith =>
      _$UserLocationDetectedCopyWithImpl<UserLocationDetected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return userLocationDetected(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return userLocationDetected?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (userLocationDetected != null) {
      return userLocationDetected(lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return userLocationDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return userLocationDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (userLocationDetected != null) {
      return userLocationDetected(this);
    }
    return orElse();
  }
}

abstract class UserLocationDetected implements PickUpEvent {
  const factory UserLocationDetected(double lat, double long) =
      _$UserLocationDetected;

  double get lat;
  double get long;
  @JsonKey(ignore: true)
  $UserLocationDetectedCopyWith<UserLocationDetected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropOffChosenFromMapCopyWith<$Res> {
  factory $DropOffChosenFromMapCopyWith(DropOffChosenFromMap value,
          $Res Function(DropOffChosenFromMap) then) =
      _$DropOffChosenFromMapCopyWithImpl<$Res>;
}

/// @nodoc
class _$DropOffChosenFromMapCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $DropOffChosenFromMapCopyWith<$Res> {
  _$DropOffChosenFromMapCopyWithImpl(
      DropOffChosenFromMap _value, $Res Function(DropOffChosenFromMap) _then)
      : super(_value, (v) => _then(v as DropOffChosenFromMap));

  @override
  DropOffChosenFromMap get _value => super._value as DropOffChosenFromMap;
}

/// @nodoc

class _$DropOffChosenFromMap
    with DiagnosticableTreeMixin
    implements DropOffChosenFromMap {
  const _$DropOffChosenFromMap();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.dropOffChosenFromMap()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.dropOffChosenFromMap'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DropOffChosenFromMap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return dropOffChosenFromMap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return dropOffChosenFromMap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (dropOffChosenFromMap != null) {
      return dropOffChosenFromMap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return dropOffChosenFromMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return dropOffChosenFromMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (dropOffChosenFromMap != null) {
      return dropOffChosenFromMap(this);
    }
    return orElse();
  }
}

abstract class DropOffChosenFromMap implements PickUpEvent {
  const factory DropOffChosenFromMap() = _$DropOffChosenFromMap;
}

/// @nodoc
abstract class $PickUpChosenFormMapCopyWith<$Res> {
  factory $PickUpChosenFormMapCopyWith(
          PickUpChosenFormMap value, $Res Function(PickUpChosenFormMap) then) =
      _$PickUpChosenFormMapCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickUpChosenFormMapCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $PickUpChosenFormMapCopyWith<$Res> {
  _$PickUpChosenFormMapCopyWithImpl(
      PickUpChosenFormMap _value, $Res Function(PickUpChosenFormMap) _then)
      : super(_value, (v) => _then(v as PickUpChosenFormMap));

  @override
  PickUpChosenFormMap get _value => super._value as PickUpChosenFormMap;
}

/// @nodoc

class _$PickUpChosenFormMap
    with DiagnosticableTreeMixin
    implements PickUpChosenFormMap {
  const _$PickUpChosenFormMap();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.pickUpChosenFormMap()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.pickUpChosenFormMap'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PickUpChosenFormMap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return pickUpChosenFormMap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return pickUpChosenFormMap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickUpChosenFormMap != null) {
      return pickUpChosenFormMap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return pickUpChosenFormMap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return pickUpChosenFormMap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickUpChosenFormMap != null) {
      return pickUpChosenFormMap(this);
    }
    return orElse();
  }
}

abstract class PickUpChosenFormMap implements PickUpEvent {
  const factory PickUpChosenFormMap() = _$PickUpChosenFormMap;
}

/// @nodoc
abstract class $PickUpChosenFormUserLocationCopyWith<$Res> {
  factory $PickUpChosenFormUserLocationCopyWith(
          PickUpChosenFormUserLocation value,
          $Res Function(PickUpChosenFormUserLocation) then) =
      _$PickUpChosenFormUserLocationCopyWithImpl<$Res>;
  $Res call({double lat, double long});
}

/// @nodoc
class _$PickUpChosenFormUserLocationCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $PickUpChosenFormUserLocationCopyWith<$Res> {
  _$PickUpChosenFormUserLocationCopyWithImpl(
      PickUpChosenFormUserLocation _value,
      $Res Function(PickUpChosenFormUserLocation) _then)
      : super(_value, (v) => _then(v as PickUpChosenFormUserLocation));

  @override
  PickUpChosenFormUserLocation get _value =>
      super._value as PickUpChosenFormUserLocation;

  @override
  $Res call({
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(PickUpChosenFormUserLocation(
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PickUpChosenFormUserLocation
    with DiagnosticableTreeMixin
    implements PickUpChosenFormUserLocation {
  const _$PickUpChosenFormUserLocation(this.lat, this.long);

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.pickUpChosenFormUserLocation(lat: $lat, long: $long)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PickUpEvent.pickUpChosenFormUserLocation'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PickUpChosenFormUserLocation &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long));

  @JsonKey(ignore: true)
  @override
  $PickUpChosenFormUserLocationCopyWith<PickUpChosenFormUserLocation>
      get copyWith => _$PickUpChosenFormUserLocationCopyWithImpl<
          PickUpChosenFormUserLocation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return pickUpChosenFormUserLocation(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return pickUpChosenFormUserLocation?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickUpChosenFormUserLocation != null) {
      return pickUpChosenFormUserLocation(lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return pickUpChosenFormUserLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return pickUpChosenFormUserLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickUpChosenFormUserLocation != null) {
      return pickUpChosenFormUserLocation(this);
    }
    return orElse();
  }
}

abstract class PickUpChosenFormUserLocation implements PickUpEvent {
  const factory PickUpChosenFormUserLocation(double lat, double long) =
      _$PickUpChosenFormUserLocation;

  double get lat;
  double get long;
  @JsonKey(ignore: true)
  $PickUpChosenFormUserLocationCopyWith<PickUpChosenFormUserLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickUpRemovedCopyWith<$Res> {
  factory $PickUpRemovedCopyWith(
          PickUpRemoved value, $Res Function(PickUpRemoved) then) =
      _$PickUpRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickUpRemovedCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $PickUpRemovedCopyWith<$Res> {
  _$PickUpRemovedCopyWithImpl(
      PickUpRemoved _value, $Res Function(PickUpRemoved) _then)
      : super(_value, (v) => _then(v as PickUpRemoved));

  @override
  PickUpRemoved get _value => super._value as PickUpRemoved;
}

/// @nodoc

class _$PickUpRemoved with DiagnosticableTreeMixin implements PickUpRemoved {
  const _$PickUpRemoved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.pickUpRemoved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PickUpEvent.pickUpRemoved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PickUpRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return pickUpRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return pickUpRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickUpRemoved != null) {
      return pickUpRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return pickUpRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return pickUpRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickUpRemoved != null) {
      return pickUpRemoved(this);
    }
    return orElse();
  }
}

abstract class PickUpRemoved implements PickUpEvent {
  const factory PickUpRemoved() = _$PickUpRemoved;
}

/// @nodoc
abstract class $DropOffRemovedCopyWith<$Res> {
  factory $DropOffRemovedCopyWith(
          DropOffRemoved value, $Res Function(DropOffRemoved) then) =
      _$DropOffRemovedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DropOffRemovedCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $DropOffRemovedCopyWith<$Res> {
  _$DropOffRemovedCopyWithImpl(
      DropOffRemoved _value, $Res Function(DropOffRemoved) _then)
      : super(_value, (v) => _then(v as DropOffRemoved));

  @override
  DropOffRemoved get _value => super._value as DropOffRemoved;
}

/// @nodoc

class _$DropOffRemoved with DiagnosticableTreeMixin implements DropOffRemoved {
  const _$DropOffRemoved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.dropOffRemoved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PickUpEvent.dropOffRemoved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DropOffRemoved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return dropOffRemoved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return dropOffRemoved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (dropOffRemoved != null) {
      return dropOffRemoved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return dropOffRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return dropOffRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (dropOffRemoved != null) {
      return dropOffRemoved(this);
    }
    return orElse();
  }
}

abstract class DropOffRemoved implements PickUpEvent {
  const factory DropOffRemoved() = _$DropOffRemoved;
}

/// @nodoc
abstract class $FormClearedCopyWith<$Res> {
  factory $FormClearedCopyWith(
          FormCleared value, $Res Function(FormCleared) then) =
      _$FormClearedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormClearedCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $FormClearedCopyWith<$Res> {
  _$FormClearedCopyWithImpl(
      FormCleared _value, $Res Function(FormCleared) _then)
      : super(_value, (v) => _then(v as FormCleared));

  @override
  FormCleared get _value => super._value as FormCleared;
}

/// @nodoc

class _$FormCleared with DiagnosticableTreeMixin implements FormCleared {
  const _$FormCleared();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.formCleared()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PickUpEvent.formCleared'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormCleared);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return formCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return formCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (formCleared != null) {
      return formCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return formCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return formCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (formCleared != null) {
      return formCleared(this);
    }
    return orElse();
  }
}

abstract class FormCleared implements PickUpEvent {
  const factory FormCleared() = _$FormCleared;
}

/// @nodoc
abstract class $DropoffCancelledCopyWith<$Res> {
  factory $DropoffCancelledCopyWith(
          DropoffCancelled value, $Res Function(DropoffCancelled) then) =
      _$DropoffCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class _$DropoffCancelledCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $DropoffCancelledCopyWith<$Res> {
  _$DropoffCancelledCopyWithImpl(
      DropoffCancelled _value, $Res Function(DropoffCancelled) _then)
      : super(_value, (v) => _then(v as DropoffCancelled));

  @override
  DropoffCancelled get _value => super._value as DropoffCancelled;
}

/// @nodoc

class _$DropoffCancelled
    with DiagnosticableTreeMixin
    implements DropoffCancelled {
  const _$DropoffCancelled();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.dropOffCancelled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.dropOffCancelled'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DropoffCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return dropOffCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return dropOffCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (dropOffCancelled != null) {
      return dropOffCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return dropOffCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return dropOffCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (dropOffCancelled != null) {
      return dropOffCancelled(this);
    }
    return orElse();
  }
}

abstract class DropoffCancelled implements PickUpEvent {
  const factory DropoffCancelled() = _$DropoffCancelled;
}

/// @nodoc
abstract class $PickUpCancelledCopyWith<$Res> {
  factory $PickUpCancelledCopyWith(
          PickUpCancelled value, $Res Function(PickUpCancelled) then) =
      _$PickUpCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class _$PickUpCancelledCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $PickUpCancelledCopyWith<$Res> {
  _$PickUpCancelledCopyWithImpl(
      PickUpCancelled _value, $Res Function(PickUpCancelled) _then)
      : super(_value, (v) => _then(v as PickUpCancelled));

  @override
  PickUpCancelled get _value => super._value as PickUpCancelled;
}

/// @nodoc

class _$PickUpCancelled
    with DiagnosticableTreeMixin
    implements PickUpCancelled {
  const _$PickUpCancelled();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.pickupCancelled()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PickUpEvent.pickupCancelled'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PickUpCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return pickupCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return pickupCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickupCancelled != null) {
      return pickupCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return pickupCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return pickupCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (pickupCancelled != null) {
      return pickupCancelled(this);
    }
    return orElse();
  }
}

abstract class PickUpCancelled implements PickUpEvent {
  const factory PickUpCancelled() = _$PickUpCancelled;
}

/// @nodoc
abstract class $CametaMustMoveToRequestedCopyWith<$Res> {
  factory $CametaMustMoveToRequestedCopyWith(CametaMustMoveToRequested value,
          $Res Function(CametaMustMoveToRequested) then) =
      _$CametaMustMoveToRequestedCopyWithImpl<$Res>;
  $Res call({double lat, double long});
}

/// @nodoc
class _$CametaMustMoveToRequestedCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $CametaMustMoveToRequestedCopyWith<$Res> {
  _$CametaMustMoveToRequestedCopyWithImpl(CametaMustMoveToRequested _value,
      $Res Function(CametaMustMoveToRequested) _then)
      : super(_value, (v) => _then(v as CametaMustMoveToRequested));

  @override
  CametaMustMoveToRequested get _value =>
      super._value as CametaMustMoveToRequested;

  @override
  $Res call({
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(CametaMustMoveToRequested(
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CametaMustMoveToRequested
    with DiagnosticableTreeMixin
    implements CametaMustMoveToRequested {
  const _$CametaMustMoveToRequested(this.lat, this.long);

  @override
  final double lat;
  @override
  final double long;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.cameraMustMoveToRequsted(lat: $lat, long: $long)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.cameraMustMoveToRequsted'))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CametaMustMoveToRequested &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.long, long));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(long));

  @JsonKey(ignore: true)
  @override
  $CametaMustMoveToRequestedCopyWith<CametaMustMoveToRequested> get copyWith =>
      _$CametaMustMoveToRequestedCopyWithImpl<CametaMustMoveToRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query, double lat, double long)
        nearbyQueryChanged,
    required TResult Function() reverseGecodingFromMapRequested,
    required TResult Function(double lat, double long) nearbyLocationsRequested,
    required TResult Function(NearbySearch pickup) pickupChoosen,
    required TResult Function(NearbySearch dropoff) dropoffChoosen,
    required TResult Function(DateTime rideDateTime) rideScheduled,
    required TResult Function() rideScheduledToNow,
    required TResult Function(double lat, double long) cameraMoved,
    required TResult Function(double lat, double long) userLocationDetected,
    required TResult Function() dropOffChosenFromMap,
    required TResult Function() pickUpChosenFormMap,
    required TResult Function(double lat, double long)
        pickUpChosenFormUserLocation,
    required TResult Function() pickUpRemoved,
    required TResult Function() dropOffRemoved,
    required TResult Function() formCleared,
    required TResult Function() dropOffCancelled,
    required TResult Function() pickupCancelled,
    required TResult Function(double lat, double long) cameraMustMoveToRequsted,
  }) {
    return cameraMustMoveToRequsted(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
  }) {
    return cameraMustMoveToRequsted?.call(lat, long);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query, double lat, double long)? nearbyQueryChanged,
    TResult Function()? reverseGecodingFromMapRequested,
    TResult Function(double lat, double long)? nearbyLocationsRequested,
    TResult Function(NearbySearch pickup)? pickupChoosen,
    TResult Function(NearbySearch dropoff)? dropoffChoosen,
    TResult Function(DateTime rideDateTime)? rideScheduled,
    TResult Function()? rideScheduledToNow,
    TResult Function(double lat, double long)? cameraMoved,
    TResult Function(double lat, double long)? userLocationDetected,
    TResult Function()? dropOffChosenFromMap,
    TResult Function()? pickUpChosenFormMap,
    TResult Function(double lat, double long)? pickUpChosenFormUserLocation,
    TResult Function()? pickUpRemoved,
    TResult Function()? dropOffRemoved,
    TResult Function()? formCleared,
    TResult Function()? dropOffCancelled,
    TResult Function()? pickupCancelled,
    TResult Function(double lat, double long)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (cameraMustMoveToRequsted != null) {
      return cameraMustMoveToRequsted(lat, long);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(NearbyQueryChanged value) nearbyQueryChanged,
    required TResult Function(ReverseGecodingFromMapRequested value)
        reverseGecodingFromMapRequested,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(PickupChoosen value) pickupChoosen,
    required TResult Function(DropoffChoosen value) dropoffChoosen,
    required TResult Function(RideScheduled value) rideScheduled,
    required TResult Function(RideScheduledToNow value) rideScheduledToNow,
    required TResult Function(CameraMoved value) cameraMoved,
    required TResult Function(UserLocationDetected value) userLocationDetected,
    required TResult Function(DropOffChosenFromMap value) dropOffChosenFromMap,
    required TResult Function(PickUpChosenFormMap value) pickUpChosenFormMap,
    required TResult Function(PickUpChosenFormUserLocation value)
        pickUpChosenFormUserLocation,
    required TResult Function(PickUpRemoved value) pickUpRemoved,
    required TResult Function(DropOffRemoved value) dropOffRemoved,
    required TResult Function(FormCleared value) formCleared,
    required TResult Function(DropoffCancelled value) dropOffCancelled,
    required TResult Function(PickUpCancelled value) pickupCancelled,
    required TResult Function(CametaMustMoveToRequested value)
        cameraMustMoveToRequsted,
  }) {
    return cameraMustMoveToRequsted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
  }) {
    return cameraMustMoveToRequsted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(NearbyQueryChanged value)? nearbyQueryChanged,
    TResult Function(ReverseGecodingFromMapRequested value)?
        reverseGecodingFromMapRequested,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(PickupChoosen value)? pickupChoosen,
    TResult Function(DropoffChoosen value)? dropoffChoosen,
    TResult Function(RideScheduled value)? rideScheduled,
    TResult Function(RideScheduledToNow value)? rideScheduledToNow,
    TResult Function(CameraMoved value)? cameraMoved,
    TResult Function(UserLocationDetected value)? userLocationDetected,
    TResult Function(DropOffChosenFromMap value)? dropOffChosenFromMap,
    TResult Function(PickUpChosenFormMap value)? pickUpChosenFormMap,
    TResult Function(PickUpChosenFormUserLocation value)?
        pickUpChosenFormUserLocation,
    TResult Function(PickUpRemoved value)? pickUpRemoved,
    TResult Function(DropOffRemoved value)? dropOffRemoved,
    TResult Function(FormCleared value)? formCleared,
    TResult Function(DropoffCancelled value)? dropOffCancelled,
    TResult Function(PickUpCancelled value)? pickupCancelled,
    TResult Function(CametaMustMoveToRequested value)? cameraMustMoveToRequsted,
    required TResult orElse(),
  }) {
    if (cameraMustMoveToRequsted != null) {
      return cameraMustMoveToRequsted(this);
    }
    return orElse();
  }
}

abstract class CametaMustMoveToRequested implements PickUpEvent {
  const factory CametaMustMoveToRequested(double lat, double long) =
      _$CametaMustMoveToRequested;

  double get lat;
  double get long;
  @JsonKey(ignore: true)
  $CametaMustMoveToRequestedCopyWith<CametaMustMoveToRequested> get copyWith =>
      throw _privateConstructorUsedError;
}
