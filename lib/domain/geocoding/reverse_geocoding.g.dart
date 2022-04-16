// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reverse_geocoding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReverseGeocodingResult _$$_ReverseGeocodingResultFromJson(
        Map<String, dynamic> json) =>
    _$_ReverseGeocodingResult(
      results: (json['results'] as List<dynamic>)
          .map((e) => ReverseGeocoding.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReverseGeocodingResultToJson(
        _$_ReverseGeocodingResult instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_ReverseGeocoding _$$_ReverseGeocodingFromJson(Map<String, dynamic> json) =>
    _$_ReverseGeocoding(
      formattedAdress: json['formatted_address'] as String,
      placeId: json['place_id'] as String,
      geometry:
          NearbyGeometry.fromJson(json['geometry'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ReverseGeocodingToJson(_$_ReverseGeocoding instance) =>
    <String, dynamic>{
      'formatted_address': instance.formattedAdress,
      'place_id': instance.placeId,
      'geometry': instance.geometry,
      'types': instance.types,
    };
