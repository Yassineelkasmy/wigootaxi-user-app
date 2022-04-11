import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_complete.freezed.dart';
part 'auto_complete.g.dart';

@freezed
class AutoComplete with _$AutoComplete {
  const factory AutoComplete({
    required String name,
    required AutoCompleteGeometry geometry,
  }) = _AutoComplete;
  factory AutoComplete.fromJson(Map<String, dynamic> json) =>
      _$AutoCompleteFromJson(json);
}

@freezed
class AutoCompleteResult with _$AutoCompleteResult {
  const factory AutoCompleteResult({required List<AutoComplete> results}) =
      _AutoCompleteResult;
  factory AutoCompleteResult.fromJson(Map<String, dynamic> json) =>
      _$AutoCompleteResultFromJson(json);
}

@freezed
class AutoCompleteGeometry with _$AutoCompleteGeometry {
  const factory AutoCompleteGeometry({
    required AutoCompleteGeometryLocation location,
  }) = _AutoCompleteGeometry;

  factory AutoCompleteGeometry.fromJson(Map<String, dynamic> json) =>
      _$AutoCompleteGeometryFromJson(json);
}

@freezed
class AutoCompleteGeometryLocation with _$AutoCompleteGeometryLocation {
  const factory AutoCompleteGeometryLocation({
    required double lat,
    required double lng,
  }) = _AutoCompleteGeometryLocation;

  factory AutoCompleteGeometryLocation.fromJson(Map<String, dynamic> json) =>
      _$AutoCompleteGeometryLocationFromJson(json);
}
