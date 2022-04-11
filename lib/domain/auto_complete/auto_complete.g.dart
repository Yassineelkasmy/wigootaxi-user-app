// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_complete.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AutoComplete _$$_AutoCompleteFromJson(Map<String, dynamic> json) =>
    _$_AutoComplete(
      name: json['name'] as String,
      geometry: AutoCompleteGeometry.fromJson(
          json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AutoCompleteToJson(_$_AutoComplete instance) =>
    <String, dynamic>{
      'name': instance.name,
      'geometry': instance.geometry,
    };

_$_AutoCompleteResult _$$_AutoCompleteResultFromJson(
        Map<String, dynamic> json) =>
    _$_AutoCompleteResult(
      results: (json['results'] as List<dynamic>)
          .map((e) => AutoComplete.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AutoCompleteResultToJson(
        _$_AutoCompleteResult instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_AutoCompleteGeometry _$$_AutoCompleteGeometryFromJson(
        Map<String, dynamic> json) =>
    _$_AutoCompleteGeometry(
      location: AutoCompleteGeometryLocation.fromJson(
          json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AutoCompleteGeometryToJson(
        _$_AutoCompleteGeometry instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

_$_AutoCompleteGeometryLocation _$$_AutoCompleteGeometryLocationFromJson(
        Map<String, dynamic> json) =>
    _$_AutoCompleteGeometryLocation(
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$$_AutoCompleteGeometryLocationToJson(
        _$_AutoCompleteGeometryLocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
