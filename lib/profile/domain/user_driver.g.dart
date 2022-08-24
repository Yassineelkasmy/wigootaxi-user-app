// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDriver _$$_UserDriverFromJson(Map<String, dynamic> json) =>
    _$_UserDriver(
      username: json['username'] as String,
      phone: json['phone'] as String,
      driverId: json['driverId'] as String,
      rides: json['rides'] as int,
      ridesIds:
          (json['ridesIds'] as List<dynamic>).map((e) => e as String).toList(),
      lastRideTs:
          const TimestampConverter().fromJson(json['lastRideTs'] as Timestamp),
    );

Map<String, dynamic> _$$_UserDriverToJson(_$_UserDriver instance) =>
    <String, dynamic>{
      'username': instance.username,
      'phone': instance.phone,
      'driverId': instance.driverId,
      'rides': instance.rides,
      'ridesIds': instance.ridesIds,
      'lastRideTs': const TimestampConverter().toJson(instance.lastRideTs),
    };
