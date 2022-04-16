import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocoding_failure.freezed.dart';

@freezed
class GeocodingFailure with _$GeocodingFailure {
  const factory GeocodingFailure.serverError() = _GeocodingFailure;
}
