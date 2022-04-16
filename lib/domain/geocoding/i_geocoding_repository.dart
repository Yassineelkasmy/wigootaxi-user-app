import 'package:dartz/dartz.dart';
import 'package:taxidriver/domain/geocoding/geocoding_failure.dart';
import 'package:taxidriver/domain/geocoding/reverse_geocoding.dart';

abstract class IGeocodingRepository {
  Future<Either<GeocodingFailure, ReverseGeocodingResult>> reverseGeocode({
    required double lat,
    required double long,
  });
}
