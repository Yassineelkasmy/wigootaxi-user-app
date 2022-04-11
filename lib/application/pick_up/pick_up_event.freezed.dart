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

  QueryChanged queryChanged(String query) {
    return QueryChanged(
      query,
    );
  }

  NearbyLocationsRequested nearbyLocationsRequested() {
    return const NearbyLocationsRequested();
  }

  StartDestinationPicked startLocationPicked() {
    return const StartDestinationPicked();
  }

  DestinationLocationPicked destinationLocationPicked() {
    return const DestinationLocationPicked();
  }
}

/// @nodoc
const $PickUpEvent = _$PickUpEventTearOff();

/// @nodoc
mixin _$PickUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) queryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function() startLocationPicked,
    required TResult Function() destinationLocationPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(QueryChanged value) queryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(StartDestinationPicked value) startLocationPicked,
    required TResult Function(DestinationLocationPicked value)
        destinationLocationPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
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
    required TResult Function(String query) queryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function() startLocationPicked,
    required TResult Function() destinationLocationPicked,
  }) {
    return startedTyping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
  }) {
    return startedTyping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
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
    required TResult Function(QueryChanged value) queryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(StartDestinationPicked value) startLocationPicked,
    required TResult Function(DestinationLocationPicked value)
        destinationLocationPicked,
  }) {
    return startedTyping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
  }) {
    return startedTyping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
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
abstract class $QueryChangedCopyWith<$Res> {
  factory $QueryChangedCopyWith(
          QueryChanged value, $Res Function(QueryChanged) then) =
      _$QueryChangedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$QueryChangedCopyWithImpl<$Res> extends _$PickUpEventCopyWithImpl<$Res>
    implements $QueryChangedCopyWith<$Res> {
  _$QueryChangedCopyWithImpl(
      QueryChanged _value, $Res Function(QueryChanged) _then)
      : super(_value, (v) => _then(v as QueryChanged));

  @override
  QueryChanged get _value => super._value as QueryChanged;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(QueryChanged(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueryChanged with DiagnosticableTreeMixin implements QueryChanged {
  const _$QueryChanged(this.query);

  @override
  final String query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.queryChanged(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.queryChanged'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QueryChanged &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  $QueryChangedCopyWith<QueryChanged> get copyWith =>
      _$QueryChangedCopyWithImpl<QueryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) queryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function() startLocationPicked,
    required TResult Function() destinationLocationPicked,
  }) {
    return queryChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
  }) {
    return queryChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(QueryChanged value) queryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(StartDestinationPicked value) startLocationPicked,
    required TResult Function(DestinationLocationPicked value)
        destinationLocationPicked,
  }) {
    return queryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
  }) {
    return queryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
    required TResult orElse(),
  }) {
    if (queryChanged != null) {
      return queryChanged(this);
    }
    return orElse();
  }
}

abstract class QueryChanged implements PickUpEvent {
  const factory QueryChanged(String query) = _$QueryChanged;

  String get query;
  @JsonKey(ignore: true)
  $QueryChangedCopyWith<QueryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyLocationsRequestedCopyWith<$Res> {
  factory $NearbyLocationsRequestedCopyWith(NearbyLocationsRequested value,
          $Res Function(NearbyLocationsRequested) then) =
      _$NearbyLocationsRequestedCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$NearbyLocationsRequested
    with DiagnosticableTreeMixin
    implements NearbyLocationsRequested {
  const _$NearbyLocationsRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.nearbyLocationsRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PickUpEvent.nearbyLocationsRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NearbyLocationsRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) queryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function() startLocationPicked,
    required TResult Function() destinationLocationPicked,
  }) {
    return nearbyLocationsRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
  }) {
    return nearbyLocationsRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
    required TResult orElse(),
  }) {
    if (nearbyLocationsRequested != null) {
      return nearbyLocationsRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(QueryChanged value) queryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(StartDestinationPicked value) startLocationPicked,
    required TResult Function(DestinationLocationPicked value)
        destinationLocationPicked,
  }) {
    return nearbyLocationsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
  }) {
    return nearbyLocationsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
    required TResult orElse(),
  }) {
    if (nearbyLocationsRequested != null) {
      return nearbyLocationsRequested(this);
    }
    return orElse();
  }
}

abstract class NearbyLocationsRequested implements PickUpEvent {
  const factory NearbyLocationsRequested() = _$NearbyLocationsRequested;
}

/// @nodoc
abstract class $StartDestinationPickedCopyWith<$Res> {
  factory $StartDestinationPickedCopyWith(StartDestinationPicked value,
          $Res Function(StartDestinationPicked) then) =
      _$StartDestinationPickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartDestinationPickedCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $StartDestinationPickedCopyWith<$Res> {
  _$StartDestinationPickedCopyWithImpl(StartDestinationPicked _value,
      $Res Function(StartDestinationPicked) _then)
      : super(_value, (v) => _then(v as StartDestinationPicked));

  @override
  StartDestinationPicked get _value => super._value as StartDestinationPicked;
}

/// @nodoc

class _$StartDestinationPicked
    with DiagnosticableTreeMixin
    implements StartDestinationPicked {
  const _$StartDestinationPicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.startLocationPicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickUpEvent.startLocationPicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StartDestinationPicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) queryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function() startLocationPicked,
    required TResult Function() destinationLocationPicked,
  }) {
    return startLocationPicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
  }) {
    return startLocationPicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
    required TResult orElse(),
  }) {
    if (startLocationPicked != null) {
      return startLocationPicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(QueryChanged value) queryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(StartDestinationPicked value) startLocationPicked,
    required TResult Function(DestinationLocationPicked value)
        destinationLocationPicked,
  }) {
    return startLocationPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
  }) {
    return startLocationPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
    required TResult orElse(),
  }) {
    if (startLocationPicked != null) {
      return startLocationPicked(this);
    }
    return orElse();
  }
}

abstract class StartDestinationPicked implements PickUpEvent {
  const factory StartDestinationPicked() = _$StartDestinationPicked;
}

/// @nodoc
abstract class $DestinationLocationPickedCopyWith<$Res> {
  factory $DestinationLocationPickedCopyWith(DestinationLocationPicked value,
          $Res Function(DestinationLocationPicked) then) =
      _$DestinationLocationPickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DestinationLocationPickedCopyWithImpl<$Res>
    extends _$PickUpEventCopyWithImpl<$Res>
    implements $DestinationLocationPickedCopyWith<$Res> {
  _$DestinationLocationPickedCopyWithImpl(DestinationLocationPicked _value,
      $Res Function(DestinationLocationPicked) _then)
      : super(_value, (v) => _then(v as DestinationLocationPicked));

  @override
  DestinationLocationPicked get _value =>
      super._value as DestinationLocationPicked;
}

/// @nodoc

class _$DestinationLocationPicked
    with DiagnosticableTreeMixin
    implements DestinationLocationPicked {
  const _$DestinationLocationPicked();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickUpEvent.destinationLocationPicked()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PickUpEvent.destinationLocationPicked'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DestinationLocationPicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedTyping,
    required TResult Function(String query) queryChanged,
    required TResult Function() nearbyLocationsRequested,
    required TResult Function() startLocationPicked,
    required TResult Function() destinationLocationPicked,
  }) {
    return destinationLocationPicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
  }) {
    return destinationLocationPicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedTyping,
    TResult Function(String query)? queryChanged,
    TResult Function()? nearbyLocationsRequested,
    TResult Function()? startLocationPicked,
    TResult Function()? destinationLocationPicked,
    required TResult orElse(),
  }) {
    if (destinationLocationPicked != null) {
      return destinationLocationPicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartedTyping value) startedTyping,
    required TResult Function(QueryChanged value) queryChanged,
    required TResult Function(NearbyLocationsRequested value)
        nearbyLocationsRequested,
    required TResult Function(StartDestinationPicked value) startLocationPicked,
    required TResult Function(DestinationLocationPicked value)
        destinationLocationPicked,
  }) {
    return destinationLocationPicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
  }) {
    return destinationLocationPicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartedTyping value)? startedTyping,
    TResult Function(QueryChanged value)? queryChanged,
    TResult Function(NearbyLocationsRequested value)? nearbyLocationsRequested,
    TResult Function(StartDestinationPicked value)? startLocationPicked,
    TResult Function(DestinationLocationPicked value)?
        destinationLocationPicked,
    required TResult orElse(),
  }) {
    if (destinationLocationPicked != null) {
      return destinationLocationPicked(this);
    }
    return orElse();
  }
}

abstract class DestinationLocationPicked implements PickUpEvent {
  const factory DestinationLocationPicked() = _$DestinationLocationPicked;
}
