import 'package:dartz/dartz.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search_failure.dart';

abstract class INearbySearchRepository {
  Future<Either<NearbySearchFailure, List<NearbySearch>>> nearbyPlaces({
    required double lat,
    required double long,
    String? query,
  });
}
