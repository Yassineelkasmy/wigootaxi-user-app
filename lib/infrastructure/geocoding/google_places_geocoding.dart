import 'package:dio/dio.dart';
import 'package:taxidriver/domain/geocoding/geocoding_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:taxidriver/domain/geocoding/i_geocoding_repository.dart';
import 'package:taxidriver/domain/geocoding/reverse_geocoding.dart';

class GooglePlacesGeocoding implements IGeocodingRepository {
  static const apiKey = 'AIzaSyBcUiq4ME8Hc3N7nsoDs0YYC2e4nWwyghU';

  static const url = 'https://maps.googleapis.com/maps/api/geocode/json';

  @override
  Future<Either<GeocodingFailure, ReverseGeocodingResult>> reverseGeocode(
      {required double lat, required double long}) async {
    final queryParameters = {
      'language': 'ar',
      'latlng': '$lat,$long',
      'key': apiKey,
    };

    final response = await Dio().get(url, queryParameters: queryParameters);
    print(response.data);

    try {
      final response = await Dio().get(url, queryParameters: queryParameters);
      return right(ReverseGeocodingResult.fromJson(response.data));
    } catch (_) {
      return left(const GeocodingFailure.serverError());
    }
  }
}

void main() async {
  final autoComplete = GooglePlacesGeocoding();
  final data = await autoComplete.reverseGeocode(
    lat: 40.714224,
    long: -73.961452,
  );
  data.fold((_) => print('error'),
      ((reverseGeocodeResult) => print(reverseGeocodeResult.results[0])));
}
