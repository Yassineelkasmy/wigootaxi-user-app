import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:taxidriver/domain/directions/directions.dart';
import 'package:taxidriver/domain/directions/directions_failure.dart';

class GooglePlacesDirectionsRepository {
  static const apiKey = 'AIzaSyBcUiq4ME8Hc3N7nsoDs0YYC2e4nWwyghU';

  static const url = 'https://maps.googleapis.com/maps/api/directions/json';
  Future<Either<DirectionFailure, Directions>> getDirections({
    required LatLng origin,
    required LatLng destination,
  }) async {
    try {
      final response = await Dio().get(
        url,
        queryParameters: {
          'origin': '${origin.latitude},${origin.longitude}',
          'destination': '${destination.latitude},${destination.longitude}',
          'key': apiKey,
        },
      );

      return right(Directions.fromMap(response.data));
    } catch (_) {
      return left(DirectionFailure.serverError());
    }
  }
}
