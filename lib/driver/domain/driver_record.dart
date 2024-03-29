import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_record.freezed.dart';
part 'driver_record.g.dart';

@JsonSerializable()
@freezed
class DriverRecord with _$DriverRecord {
  const factory DriverRecord({
    required double lng,
    required double lat,
    required String id,
    required int lastSeconds,
    required String username,
    required String phone,
  }) = _DriverRecord;

  factory DriverRecord.fromJson(Map<String, dynamic> json) {
    return _$DriverRecordFromJson(json);
  }
}
