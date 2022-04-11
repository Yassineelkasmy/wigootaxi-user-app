// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auto_complete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AutoComplete _$AutoCompleteFromJson(Map<String, dynamic> json) {
  return _AutoComplete.fromJson(json);
}

/// @nodoc
class _$AutoCompleteTearOff {
  const _$AutoCompleteTearOff();

  _AutoComplete call(
      {required String name, required AutoCompleteGeometry geometry}) {
    return _AutoComplete(
      name: name,
      geometry: geometry,
    );
  }

  AutoComplete fromJson(Map<String, Object?> json) {
    return AutoComplete.fromJson(json);
  }
}

/// @nodoc
const $AutoComplete = _$AutoCompleteTearOff();

/// @nodoc
mixin _$AutoComplete {
  String get name => throw _privateConstructorUsedError;
  AutoCompleteGeometry get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoCompleteCopyWith<AutoComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoCompleteCopyWith<$Res> {
  factory $AutoCompleteCopyWith(
          AutoComplete value, $Res Function(AutoComplete) then) =
      _$AutoCompleteCopyWithImpl<$Res>;
  $Res call({String name, AutoCompleteGeometry geometry});

  $AutoCompleteGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$AutoCompleteCopyWithImpl<$Res> implements $AutoCompleteCopyWith<$Res> {
  _$AutoCompleteCopyWithImpl(this._value, this._then);

  final AutoComplete _value;
  // ignore: unused_field
  final $Res Function(AutoComplete) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as AutoCompleteGeometry,
    ));
  }

  @override
  $AutoCompleteGeometryCopyWith<$Res> get geometry {
    return $AutoCompleteGeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$AutoCompleteCopyWith<$Res>
    implements $AutoCompleteCopyWith<$Res> {
  factory _$AutoCompleteCopyWith(
          _AutoComplete value, $Res Function(_AutoComplete) then) =
      __$AutoCompleteCopyWithImpl<$Res>;
  @override
  $Res call({String name, AutoCompleteGeometry geometry});

  @override
  $AutoCompleteGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$AutoCompleteCopyWithImpl<$Res> extends _$AutoCompleteCopyWithImpl<$Res>
    implements _$AutoCompleteCopyWith<$Res> {
  __$AutoCompleteCopyWithImpl(
      _AutoComplete _value, $Res Function(_AutoComplete) _then)
      : super(_value, (v) => _then(v as _AutoComplete));

  @override
  _AutoComplete get _value => super._value as _AutoComplete;

  @override
  $Res call({
    Object? name = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_AutoComplete(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as AutoCompleteGeometry,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AutoComplete implements _AutoComplete {
  const _$_AutoComplete({required this.name, required this.geometry});

  factory _$_AutoComplete.fromJson(Map<String, dynamic> json) =>
      _$$_AutoCompleteFromJson(json);

  @override
  final String name;
  @override
  final AutoCompleteGeometry geometry;

  @override
  String toString() {
    return 'AutoComplete(name: $name, geometry: $geometry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoComplete &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.geometry, geometry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(geometry));

  @JsonKey(ignore: true)
  @override
  _$AutoCompleteCopyWith<_AutoComplete> get copyWith =>
      __$AutoCompleteCopyWithImpl<_AutoComplete>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutoCompleteToJson(this);
  }
}

abstract class _AutoComplete implements AutoComplete {
  const factory _AutoComplete(
      {required String name,
      required AutoCompleteGeometry geometry}) = _$_AutoComplete;

  factory _AutoComplete.fromJson(Map<String, dynamic> json) =
      _$_AutoComplete.fromJson;

  @override
  String get name;
  @override
  AutoCompleteGeometry get geometry;
  @override
  @JsonKey(ignore: true)
  _$AutoCompleteCopyWith<_AutoComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

AutoCompleteResult _$AutoCompleteResultFromJson(Map<String, dynamic> json) {
  return _AutoCompleteResult.fromJson(json);
}

/// @nodoc
class _$AutoCompleteResultTearOff {
  const _$AutoCompleteResultTearOff();

  _AutoCompleteResult call({required List<AutoComplete> results}) {
    return _AutoCompleteResult(
      results: results,
    );
  }

  AutoCompleteResult fromJson(Map<String, Object?> json) {
    return AutoCompleteResult.fromJson(json);
  }
}

/// @nodoc
const $AutoCompleteResult = _$AutoCompleteResultTearOff();

/// @nodoc
mixin _$AutoCompleteResult {
  List<AutoComplete> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoCompleteResultCopyWith<AutoCompleteResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoCompleteResultCopyWith<$Res> {
  factory $AutoCompleteResultCopyWith(
          AutoCompleteResult value, $Res Function(AutoCompleteResult) then) =
      _$AutoCompleteResultCopyWithImpl<$Res>;
  $Res call({List<AutoComplete> results});
}

/// @nodoc
class _$AutoCompleteResultCopyWithImpl<$Res>
    implements $AutoCompleteResultCopyWith<$Res> {
  _$AutoCompleteResultCopyWithImpl(this._value, this._then);

  final AutoCompleteResult _value;
  // ignore: unused_field
  final $Res Function(AutoCompleteResult) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AutoComplete>,
    ));
  }
}

/// @nodoc
abstract class _$AutoCompleteResultCopyWith<$Res>
    implements $AutoCompleteResultCopyWith<$Res> {
  factory _$AutoCompleteResultCopyWith(
          _AutoCompleteResult value, $Res Function(_AutoCompleteResult) then) =
      __$AutoCompleteResultCopyWithImpl<$Res>;
  @override
  $Res call({List<AutoComplete> results});
}

/// @nodoc
class __$AutoCompleteResultCopyWithImpl<$Res>
    extends _$AutoCompleteResultCopyWithImpl<$Res>
    implements _$AutoCompleteResultCopyWith<$Res> {
  __$AutoCompleteResultCopyWithImpl(
      _AutoCompleteResult _value, $Res Function(_AutoCompleteResult) _then)
      : super(_value, (v) => _then(v as _AutoCompleteResult));

  @override
  _AutoCompleteResult get _value => super._value as _AutoCompleteResult;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_AutoCompleteResult(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<AutoComplete>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AutoCompleteResult implements _AutoCompleteResult {
  const _$_AutoCompleteResult({required this.results});

  factory _$_AutoCompleteResult.fromJson(Map<String, dynamic> json) =>
      _$$_AutoCompleteResultFromJson(json);

  @override
  final List<AutoComplete> results;

  @override
  String toString() {
    return 'AutoCompleteResult(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoCompleteResult &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$AutoCompleteResultCopyWith<_AutoCompleteResult> get copyWith =>
      __$AutoCompleteResultCopyWithImpl<_AutoCompleteResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutoCompleteResultToJson(this);
  }
}

abstract class _AutoCompleteResult implements AutoCompleteResult {
  const factory _AutoCompleteResult({required List<AutoComplete> results}) =
      _$_AutoCompleteResult;

  factory _AutoCompleteResult.fromJson(Map<String, dynamic> json) =
      _$_AutoCompleteResult.fromJson;

  @override
  List<AutoComplete> get results;
  @override
  @JsonKey(ignore: true)
  _$AutoCompleteResultCopyWith<_AutoCompleteResult> get copyWith =>
      throw _privateConstructorUsedError;
}

AutoCompleteGeometry _$AutoCompleteGeometryFromJson(Map<String, dynamic> json) {
  return _AutoCompleteGeometry.fromJson(json);
}

/// @nodoc
class _$AutoCompleteGeometryTearOff {
  const _$AutoCompleteGeometryTearOff();

  _AutoCompleteGeometry call({required AutoCompleteGeometryLocation location}) {
    return _AutoCompleteGeometry(
      location: location,
    );
  }

  AutoCompleteGeometry fromJson(Map<String, Object?> json) {
    return AutoCompleteGeometry.fromJson(json);
  }
}

/// @nodoc
const $AutoCompleteGeometry = _$AutoCompleteGeometryTearOff();

/// @nodoc
mixin _$AutoCompleteGeometry {
  AutoCompleteGeometryLocation get location =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoCompleteGeometryCopyWith<AutoCompleteGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoCompleteGeometryCopyWith<$Res> {
  factory $AutoCompleteGeometryCopyWith(AutoCompleteGeometry value,
          $Res Function(AutoCompleteGeometry) then) =
      _$AutoCompleteGeometryCopyWithImpl<$Res>;
  $Res call({AutoCompleteGeometryLocation location});

  $AutoCompleteGeometryLocationCopyWith<$Res> get location;
}

/// @nodoc
class _$AutoCompleteGeometryCopyWithImpl<$Res>
    implements $AutoCompleteGeometryCopyWith<$Res> {
  _$AutoCompleteGeometryCopyWithImpl(this._value, this._then);

  final AutoCompleteGeometry _value;
  // ignore: unused_field
  final $Res Function(AutoCompleteGeometry) _then;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AutoCompleteGeometryLocation,
    ));
  }

  @override
  $AutoCompleteGeometryLocationCopyWith<$Res> get location {
    return $AutoCompleteGeometryLocationCopyWith<$Res>(_value.location,
        (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$AutoCompleteGeometryCopyWith<$Res>
    implements $AutoCompleteGeometryCopyWith<$Res> {
  factory _$AutoCompleteGeometryCopyWith(_AutoCompleteGeometry value,
          $Res Function(_AutoCompleteGeometry) then) =
      __$AutoCompleteGeometryCopyWithImpl<$Res>;
  @override
  $Res call({AutoCompleteGeometryLocation location});

  @override
  $AutoCompleteGeometryLocationCopyWith<$Res> get location;
}

/// @nodoc
class __$AutoCompleteGeometryCopyWithImpl<$Res>
    extends _$AutoCompleteGeometryCopyWithImpl<$Res>
    implements _$AutoCompleteGeometryCopyWith<$Res> {
  __$AutoCompleteGeometryCopyWithImpl(
      _AutoCompleteGeometry _value, $Res Function(_AutoCompleteGeometry) _then)
      : super(_value, (v) => _then(v as _AutoCompleteGeometry));

  @override
  _AutoCompleteGeometry get _value => super._value as _AutoCompleteGeometry;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_AutoCompleteGeometry(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AutoCompleteGeometryLocation,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AutoCompleteGeometry implements _AutoCompleteGeometry {
  const _$_AutoCompleteGeometry({required this.location});

  factory _$_AutoCompleteGeometry.fromJson(Map<String, dynamic> json) =>
      _$$_AutoCompleteGeometryFromJson(json);

  @override
  final AutoCompleteGeometryLocation location;

  @override
  String toString() {
    return 'AutoCompleteGeometry(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoCompleteGeometry &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$AutoCompleteGeometryCopyWith<_AutoCompleteGeometry> get copyWith =>
      __$AutoCompleteGeometryCopyWithImpl<_AutoCompleteGeometry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutoCompleteGeometryToJson(this);
  }
}

abstract class _AutoCompleteGeometry implements AutoCompleteGeometry {
  const factory _AutoCompleteGeometry(
          {required AutoCompleteGeometryLocation location}) =
      _$_AutoCompleteGeometry;

  factory _AutoCompleteGeometry.fromJson(Map<String, dynamic> json) =
      _$_AutoCompleteGeometry.fromJson;

  @override
  AutoCompleteGeometryLocation get location;
  @override
  @JsonKey(ignore: true)
  _$AutoCompleteGeometryCopyWith<_AutoCompleteGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

AutoCompleteGeometryLocation _$AutoCompleteGeometryLocationFromJson(
    Map<String, dynamic> json) {
  return _AutoCompleteGeometryLocation.fromJson(json);
}

/// @nodoc
class _$AutoCompleteGeometryLocationTearOff {
  const _$AutoCompleteGeometryLocationTearOff();

  _AutoCompleteGeometryLocation call(
      {required double lat, required double lng}) {
    return _AutoCompleteGeometryLocation(
      lat: lat,
      lng: lng,
    );
  }

  AutoCompleteGeometryLocation fromJson(Map<String, Object?> json) {
    return AutoCompleteGeometryLocation.fromJson(json);
  }
}

/// @nodoc
const $AutoCompleteGeometryLocation = _$AutoCompleteGeometryLocationTearOff();

/// @nodoc
mixin _$AutoCompleteGeometryLocation {
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoCompleteGeometryLocationCopyWith<AutoCompleteGeometryLocation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoCompleteGeometryLocationCopyWith<$Res> {
  factory $AutoCompleteGeometryLocationCopyWith(
          AutoCompleteGeometryLocation value,
          $Res Function(AutoCompleteGeometryLocation) then) =
      _$AutoCompleteGeometryLocationCopyWithImpl<$Res>;
  $Res call({double lat, double lng});
}

/// @nodoc
class _$AutoCompleteGeometryLocationCopyWithImpl<$Res>
    implements $AutoCompleteGeometryLocationCopyWith<$Res> {
  _$AutoCompleteGeometryLocationCopyWithImpl(this._value, this._then);

  final AutoCompleteGeometryLocation _value;
  // ignore: unused_field
  final $Res Function(AutoCompleteGeometryLocation) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$AutoCompleteGeometryLocationCopyWith<$Res>
    implements $AutoCompleteGeometryLocationCopyWith<$Res> {
  factory _$AutoCompleteGeometryLocationCopyWith(
          _AutoCompleteGeometryLocation value,
          $Res Function(_AutoCompleteGeometryLocation) then) =
      __$AutoCompleteGeometryLocationCopyWithImpl<$Res>;
  @override
  $Res call({double lat, double lng});
}

/// @nodoc
class __$AutoCompleteGeometryLocationCopyWithImpl<$Res>
    extends _$AutoCompleteGeometryLocationCopyWithImpl<$Res>
    implements _$AutoCompleteGeometryLocationCopyWith<$Res> {
  __$AutoCompleteGeometryLocationCopyWithImpl(
      _AutoCompleteGeometryLocation _value,
      $Res Function(_AutoCompleteGeometryLocation) _then)
      : super(_value, (v) => _then(v as _AutoCompleteGeometryLocation));

  @override
  _AutoCompleteGeometryLocation get _value =>
      super._value as _AutoCompleteGeometryLocation;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_AutoCompleteGeometryLocation(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: lng == freezed
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AutoCompleteGeometryLocation implements _AutoCompleteGeometryLocation {
  const _$_AutoCompleteGeometryLocation({required this.lat, required this.lng});

  factory _$_AutoCompleteGeometryLocation.fromJson(Map<String, dynamic> json) =>
      _$$_AutoCompleteGeometryLocationFromJson(json);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'AutoCompleteGeometryLocation(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoCompleteGeometryLocation &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lng, lng));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lng));

  @JsonKey(ignore: true)
  @override
  _$AutoCompleteGeometryLocationCopyWith<_AutoCompleteGeometryLocation>
      get copyWith => __$AutoCompleteGeometryLocationCopyWithImpl<
          _AutoCompleteGeometryLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutoCompleteGeometryLocationToJson(this);
  }
}

abstract class _AutoCompleteGeometryLocation
    implements AutoCompleteGeometryLocation {
  const factory _AutoCompleteGeometryLocation(
      {required double lat,
      required double lng}) = _$_AutoCompleteGeometryLocation;

  factory _AutoCompleteGeometryLocation.fromJson(Map<String, dynamic> json) =
      _$_AutoCompleteGeometryLocation.fromJson;

  @override
  double get lat;
  @override
  double get lng;
  @override
  @JsonKey(ignore: true)
  _$AutoCompleteGeometryLocationCopyWith<_AutoCompleteGeometryLocation>
      get copyWith => throw _privateConstructorUsedError;
}
