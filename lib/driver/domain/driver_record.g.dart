// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverRecord _$DriverRecordFromJson(Map<String, dynamic> json) => DriverRecord(
      lng: (json['lng'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
      id: json['id'] as String,
      lastSeconds: json['lastSeconds'] as int,
      username: json['username'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$DriverRecordToJson(DriverRecord instance) =>
    <String, dynamic>{
      'lng': instance.lng,
      'lat': instance.lat,
      'id': instance.id,
      'lastSeconds': instance.lastSeconds,
      'username': instance.username,
      'phone': instance.phone,
    };
