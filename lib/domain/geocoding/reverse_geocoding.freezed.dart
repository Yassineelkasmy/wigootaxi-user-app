// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reverse_geocoding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReverseGeocodingResult _$ReverseGeocodingResultFromJson(
    Map<String, dynamic> json) {
  return _ReverseGeocodingResult.fromJson(json);
}

/// @nodoc
class _$ReverseGeocodingResultTearOff {
  const _$ReverseGeocodingResultTearOff();

  _ReverseGeocodingResult call({required List<ReverseGeocoding> results}) {
    return _ReverseGeocodingResult(
      results: results,
    );
  }

  ReverseGeocodingResult fromJson(Map<String, Object?> json) {
    return ReverseGeocodingResult.fromJson(json);
  }
}

/// @nodoc
const $ReverseGeocodingResult = _$ReverseGeocodingResultTearOff();

/// @nodoc
mixin _$ReverseGeocodingResult {
  List<ReverseGeocoding> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReverseGeocodingResultCopyWith<ReverseGeocodingResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReverseGeocodingResultCopyWith<$Res> {
  factory $ReverseGeocodingResultCopyWith(ReverseGeocodingResult value,
          $Res Function(ReverseGeocodingResult) then) =
      _$ReverseGeocodingResultCopyWithImpl<$Res>;
  $Res call({List<ReverseGeocoding> results});
}

/// @nodoc
class _$ReverseGeocodingResultCopyWithImpl<$Res>
    implements $ReverseGeocodingResultCopyWith<$Res> {
  _$ReverseGeocodingResultCopyWithImpl(this._value, this._then);

  final ReverseGeocodingResult _value;
  // ignore: unused_field
  final $Res Function(ReverseGeocodingResult) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ReverseGeocoding>,
    ));
  }
}

/// @nodoc
abstract class _$ReverseGeocodingResultCopyWith<$Res>
    implements $ReverseGeocodingResultCopyWith<$Res> {
  factory _$ReverseGeocodingResultCopyWith(_ReverseGeocodingResult value,
          $Res Function(_ReverseGeocodingResult) then) =
      __$ReverseGeocodingResultCopyWithImpl<$Res>;
  @override
  $Res call({List<ReverseGeocoding> results});
}

/// @nodoc
class __$ReverseGeocodingResultCopyWithImpl<$Res>
    extends _$ReverseGeocodingResultCopyWithImpl<$Res>
    implements _$ReverseGeocodingResultCopyWith<$Res> {
  __$ReverseGeocodingResultCopyWithImpl(_ReverseGeocodingResult _value,
      $Res Function(_ReverseGeocodingResult) _then)
      : super(_value, (v) => _then(v as _ReverseGeocodingResult));

  @override
  _ReverseGeocodingResult get _value => super._value as _ReverseGeocodingResult;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_ReverseGeocodingResult(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ReverseGeocoding>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReverseGeocodingResult implements _ReverseGeocodingResult {
  const _$_ReverseGeocodingResult({required this.results});

  factory _$_ReverseGeocodingResult.fromJson(Map<String, dynamic> json) =>
      _$$_ReverseGeocodingResultFromJson(json);

  @override
  final List<ReverseGeocoding> results;

  @override
  String toString() {
    return 'ReverseGeocodingResult(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocodingResult &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$ReverseGeocodingResultCopyWith<_ReverseGeocodingResult> get copyWith =>
      __$ReverseGeocodingResultCopyWithImpl<_ReverseGeocodingResult>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReverseGeocodingResultToJson(this);
  }
}

abstract class _ReverseGeocodingResult implements ReverseGeocodingResult {
  const factory _ReverseGeocodingResult(
      {required List<ReverseGeocoding> results}) = _$_ReverseGeocodingResult;

  factory _ReverseGeocodingResult.fromJson(Map<String, dynamic> json) =
      _$_ReverseGeocodingResult.fromJson;

  @override
  List<ReverseGeocoding> get results;
  @override
  @JsonKey(ignore: true)
  _$ReverseGeocodingResultCopyWith<_ReverseGeocodingResult> get copyWith =>
      throw _privateConstructorUsedError;
}

ReverseGeocoding _$ReverseGeocodingFromJson(Map<String, dynamic> json) {
  return _ReverseGeocoding.fromJson(json);
}

/// @nodoc
class _$ReverseGeocodingTearOff {
  const _$ReverseGeocodingTearOff();

  _ReverseGeocoding call(
      {@JsonKey(name: 'formatted_address') required String formattedAdress,
      @JsonKey(name: 'place_id') required String placeId,
      required NearbyGeometry geometry,
      required List<String> types}) {
    return _ReverseGeocoding(
      formattedAdress: formattedAdress,
      placeId: placeId,
      geometry: geometry,
      types: types,
    );
  }

  ReverseGeocoding fromJson(Map<String, Object?> json) {
    return ReverseGeocoding.fromJson(json);
  }
}

/// @nodoc
const $ReverseGeocoding = _$ReverseGeocodingTearOff();

/// @nodoc
mixin _$ReverseGeocoding {
  @JsonKey(name: 'formatted_address')
  String get formattedAdress => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  String get placeId => throw _privateConstructorUsedError;
  NearbyGeometry get geometry => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReverseGeocodingCopyWith<ReverseGeocoding> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReverseGeocodingCopyWith<$Res> {
  factory $ReverseGeocodingCopyWith(
          ReverseGeocoding value, $Res Function(ReverseGeocoding) then) =
      _$ReverseGeocodingCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'formatted_address') String formattedAdress,
      @JsonKey(name: 'place_id') String placeId,
      NearbyGeometry geometry,
      List<String> types});

  $NearbyGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class _$ReverseGeocodingCopyWithImpl<$Res>
    implements $ReverseGeocodingCopyWith<$Res> {
  _$ReverseGeocodingCopyWithImpl(this._value, this._then);

  final ReverseGeocoding _value;
  // ignore: unused_field
  final $Res Function(ReverseGeocoding) _then;

  @override
  $Res call({
    Object? formattedAdress = freezed,
    Object? placeId = freezed,
    Object? geometry = freezed,
    Object? types = freezed,
  }) {
    return _then(_value.copyWith(
      formattedAdress: formattedAdress == freezed
          ? _value.formattedAdress
          : formattedAdress // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as NearbyGeometry,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $NearbyGeometryCopyWith<$Res> get geometry {
    return $NearbyGeometryCopyWith<$Res>(_value.geometry, (value) {
      return _then(_value.copyWith(geometry: value));
    });
  }
}

/// @nodoc
abstract class _$ReverseGeocodingCopyWith<$Res>
    implements $ReverseGeocodingCopyWith<$Res> {
  factory _$ReverseGeocodingCopyWith(
          _ReverseGeocoding value, $Res Function(_ReverseGeocoding) then) =
      __$ReverseGeocodingCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'formatted_address') String formattedAdress,
      @JsonKey(name: 'place_id') String placeId,
      NearbyGeometry geometry,
      List<String> types});

  @override
  $NearbyGeometryCopyWith<$Res> get geometry;
}

/// @nodoc
class __$ReverseGeocodingCopyWithImpl<$Res>
    extends _$ReverseGeocodingCopyWithImpl<$Res>
    implements _$ReverseGeocodingCopyWith<$Res> {
  __$ReverseGeocodingCopyWithImpl(
      _ReverseGeocoding _value, $Res Function(_ReverseGeocoding) _then)
      : super(_value, (v) => _then(v as _ReverseGeocoding));

  @override
  _ReverseGeocoding get _value => super._value as _ReverseGeocoding;

  @override
  $Res call({
    Object? formattedAdress = freezed,
    Object? placeId = freezed,
    Object? geometry = freezed,
    Object? types = freezed,
  }) {
    return _then(_ReverseGeocoding(
      formattedAdress: formattedAdress == freezed
          ? _value.formattedAdress
          : formattedAdress // ignore: cast_nullable_to_non_nullable
              as String,
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      geometry: geometry == freezed
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as NearbyGeometry,
      types: types == freezed
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReverseGeocoding implements _ReverseGeocoding {
  const _$_ReverseGeocoding(
      {@JsonKey(name: 'formatted_address') required this.formattedAdress,
      @JsonKey(name: 'place_id') required this.placeId,
      required this.geometry,
      required this.types});

  factory _$_ReverseGeocoding.fromJson(Map<String, dynamic> json) =>
      _$$_ReverseGeocodingFromJson(json);

  @override
  @JsonKey(name: 'formatted_address')
  final String formattedAdress;
  @override
  @JsonKey(name: 'place_id')
  final String placeId;
  @override
  final NearbyGeometry geometry;
  @override
  final List<String> types;

  @override
  String toString() {
    return 'ReverseGeocoding(formattedAdress: $formattedAdress, placeId: $placeId, geometry: $geometry, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseGeocoding &&
            const DeepCollectionEquality()
                .equals(other.formattedAdress, formattedAdress) &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.geometry, geometry) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(formattedAdress),
      const DeepCollectionEquality().hash(placeId),
      const DeepCollectionEquality().hash(geometry),
      const DeepCollectionEquality().hash(types));

  @JsonKey(ignore: true)
  @override
  _$ReverseGeocodingCopyWith<_ReverseGeocoding> get copyWith =>
      __$ReverseGeocodingCopyWithImpl<_ReverseGeocoding>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReverseGeocodingToJson(this);
  }
}

abstract class _ReverseGeocoding implements ReverseGeocoding {
  const factory _ReverseGeocoding(
      {@JsonKey(name: 'formatted_address') required String formattedAdress,
      @JsonKey(name: 'place_id') required String placeId,
      required NearbyGeometry geometry,
      required List<String> types}) = _$_ReverseGeocoding;

  factory _ReverseGeocoding.fromJson(Map<String, dynamic> json) =
      _$_ReverseGeocoding.fromJson;

  @override
  @JsonKey(name: 'formatted_address')
  String get formattedAdress;
  @override
  @JsonKey(name: 'place_id')
  String get placeId;
  @override
  NearbyGeometry get geometry;
  @override
  List<String> get types;
  @override
  @JsonKey(ignore: true)
  _$ReverseGeocodingCopyWith<_ReverseGeocoding> get copyWith =>
      throw _privateConstructorUsedError;
}
