import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/shared/helpers/timestamps_converter.dart';

part 'user_driver.freezed.dart';
part 'user_driver.g.dart';

@freezed
class UserDriver with _$UserDriver {
  const factory UserDriver({
    required String username,
    required String phone,
    required String driverId,
    required int rides,
    required List<String> ridesIds,
    @TimestampConverter() required DateTime lastRideTs,
  }) = _UserDriver;

  factory UserDriver.fromJson(Map<String, dynamic> json) =>
      _$UserDriverFromJson(json);
}
