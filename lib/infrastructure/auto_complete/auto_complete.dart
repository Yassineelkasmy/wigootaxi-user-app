import 'package:dio/dio.dart';
import 'package:taxidriver/domain/auto_complete/auto_complete.dart';

class AutoCompleteRepository {
  static const apiKey = 'AIzaSyBcUiq4ME8Hc3N7nsoDs0YYC2e4nWwyghU';
  static const url =
      'https://maps.googleapis.com/maps/api/place/nearbysearch/json';

  Future<List<AutoComplete>> nearbyPlaces(
      {required String lat,
      required String long,
      required String query}) async {
    final queryParameters = {
      'keyword': query,
      'location': '$lat,$long',
      'radius': 50000,
      'key': apiKey,
    };

    final response = await Dio().get(url, queryParameters: queryParameters);
    return AutoCompleteResult.fromJson(response.data).results;
  }
}

void main() async {
  final autoComplete = AutoCompleteRepository();
  final data = await autoComplete.nearbyPlaces(
      lat: '37.785834', long: '-122.406417', query: "san");

  print(data);
}
