// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrix_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatrixResponse _$$_MatrixResponseFromJson(Map<String, dynamic> json) =>
    _$_MatrixResponse(
      rows: (json['rows'] as List<dynamic>)
          .map((e) => MatrixRow.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MatrixResponseToJson(_$_MatrixResponse instance) =>
    <String, dynamic>{
      'rows': instance.rows,
    };

_$_MatrixRow _$$_MatrixRowFromJson(Map<String, dynamic> json) => _$_MatrixRow(
      elements: (json['elements'] as List<dynamic>)
          .map((e) => MatrixElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MatrixRowToJson(_$_MatrixRow instance) =>
    <String, dynamic>{
      'elements': instance.elements,
    };

_$_MatrixElement _$$_MatrixElementFromJson(Map<String, dynamic> json) =>
    _$_MatrixElement(
      duration: MatrixData.fromJson(json['duration'] as Map<String, dynamic>),
      distance: MatrixData.fromJson(json['distance'] as Map<String, dynamic>),
      duration_in_traffic: MatrixData.fromJson(
          json['duration_in_traffic'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MatrixElementToJson(_$_MatrixElement instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      'distance': instance.distance,
      'duration_in_traffic': instance.duration_in_traffic,
    };

_$_MatrixData _$$_MatrixDataFromJson(Map<String, dynamic> json) =>
    _$_MatrixData(
      text: json['text'] as String,
      value: json['value'] as int,
    );

Map<String, dynamic> _$$_MatrixDataToJson(_$_MatrixData instance) =>
    <String, dynamic>{
      'text': instance.text,
      'value': instance.value,
    };
