import 'package:android_intent_plus/android_intent.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/location/location_event.dart';
import 'package:taxidriver/application/location/location_state.dart';
import 'package:platform/platform.dart';

class LocationController extends StateNotifier<LocationState> {
  LocationController({this.isSpawned = false}) : super(LocationState.initial());
  final bool isSpawned;

  // final Location location = Location();

  Future mapEventToState(LocationEvent event) {
    return event.map(
      locationRequested: (event) async {
        state = state.copyWith(isRequesting: true);

        final position = await _determinePosition(
          pressed: event.pressed,
        );
        state = state.copyWith(
          // locationData: _locationData,
          position: position,
          isRequesting: false,
        );
      },
      locationDetected: (locationDetected) async {},
      permessionDenied: (permessionDenied) async {},
    );
  }

  Future<Position?> _determinePosition({required bool pressed}) async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      if (!pressed) {
        await Future.delayed(
          Duration(seconds: 3),
        );
      }

      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      if (const LocalPlatform().isAndroid) {
        AndroidIntent intent = AndroidIntent(
          action: 'android.settings.LOCATION_SOURCE_SETTINGS',
        );
        await intent.launch();
      }
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    // if (!isSpawned) {
    //   FlutterIsolate.spawn(locationIsolate, '');
    // }
    return await Geolocator.getCurrentPosition();
  }
}
