import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taxidriver/application/location/location_controller.dart';
import 'package:taxidriver/application/location/location_event.dart';
import 'package:taxidriver/constants/storage_keys.dart';
import 'package:taxidriver/firebase_options.dart';
import 'package:taxidriver/user/services/user_service.dart';

void locationIsolate(String message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final prefs = await SharedPreferences.getInstance();
  bool isOnline = prefs.getBool(isOnlineKey) ?? false;

  final userService = UserService();

  final locationController = LocationController(isSpawned: true);
  await locationController.mapEventToState(LocationEvent.locationRequested(
    pressed: false,
  ));

  Timer.periodic(
    Duration(seconds: 5),
    (timer) async {
      await prefs.reload();
      final newIsOnline = prefs.getBool(isOnlineKey) ?? isOnline;
      final currentRide = prefs.getString(currentRideKey);
      print("isolate " + prefs.getBool(isOnlineKey).toString());

      if (newIsOnline) {
        locationController.mapEventToState(LocationEvent.locationRequested(
          pressed: false,
        ));
        userService.updateLocation(
          lat: locationController.state.position?.latitude ?? 0,
          lng: locationController.state.position?.longitude ?? 0,
          currentRideId: currentRide,
        );
      }
    },
  );
}
