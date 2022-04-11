import 'package:dio/dio.dart';

class AutoComplete {
  static const apiKey = 'AIzaSyBcUiq4ME8Hc3N7nsoDs0YYC2e4nWwyghU';
  static const url =
      'https://maps.googleapis.com/maps/api/place/autocomplete/json';

  Future<dynamic> nearbyPlaces(
      {required String lat,
      required String long,
      required String query}) async {
    final queryParameters = {
      'input': query,
      'location': '$lat,$long',
      'radius': 50000,
      'key': apiKey,
    };

    final response = await Dio().get(url, queryParameters: queryParameters);
    return response.data;
  }
}

void main() async {
  final autoComplete = AutoComplete();
  final data = await autoComplete.nearbyPlaces(
      lat: '37.785834', long: '-122.406417', query: "san");

  print(data);
}
