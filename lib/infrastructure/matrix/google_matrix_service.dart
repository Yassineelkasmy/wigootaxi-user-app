import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:taxidriver/domain/geocoding/geocoding_failure.dart';
import 'package:taxidriver/domain/google_matrix/matrix_response.dart';

class GoogleMatrixService {
  static const apiKey = 'AIzaSyBcUiq4ME8Hc3N7nsoDs0YYC2e4nWwyghU';
  static const url = 'https://maps.googleapis.com/maps/api/distancematrix/json';

  Future<Either<GeocodingFailure, MatrixResponse>> getMatrix({
    required String dropoffPlaceId,
    required String pickupPlaceId,
  }) async {
    final queryParameters = {
      'destinations': 'place_id:$dropoffPlaceId',
      'origins': 'place_id:$pickupPlaceId',
      'key': apiKey,
    };

    final response = await Dio().get(url, queryParameters: queryParameters);
    print(response.data);

    try {
      final response = await Dio().get(url, queryParameters: queryParameters);
      return right(MatrixResponse.fromJson(response.data));
    } catch (_) {
      return left(const GeocodingFailure.serverError());
    }
  }
}

main() async {
  final matrixService = GoogleMatrixService();
  final data = await matrixService.getMatrix(
    dropoffPlaceId: 'ChIJLRNM8FyHCw0ReuG0v3HFv3Y',
    pickupPlaceId: 'ChIJSUjB4l1CCw0RvHpOAr2NJUM',
  );
  print(data);
}
