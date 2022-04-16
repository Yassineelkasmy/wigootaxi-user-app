import 'package:freezed_annotation/freezed_annotation.dart';

part 'reverse_geocoding.freezed.dart';
part 'reverse_geocoding.g.dart';

@freezed
class ReverseGeocodingResult with _$ReverseGeocodingResult {
  const factory ReverseGeocodingResult({
    required List<ReverseGeocoding> results,
  }) = _ReverseGeocodingResult;

  factory ReverseGeocodingResult.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodingResultFromJson(json);
}

@freezed
class ReverseGeocoding with _$ReverseGeocoding {
  const factory ReverseGeocoding({
    @JsonKey(name: 'formatted_address') required String formattedAdress,
    @JsonKey(name: 'place_id') required String placeId,
  }) = _ReverseGeocoding;

  factory ReverseGeocoding.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodingFromJson(json);
}
