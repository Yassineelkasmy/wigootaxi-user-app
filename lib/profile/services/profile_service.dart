import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:taxidriver/profile/domain/user_driver.dart';
import 'package:taxidriver/ride/domain/ride.dart';
import 'package:taxidriver/ride/domain/ride_failure.dart';

class ProfileService {
  ProfileService() {
    profileRef = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('rides');
  }

  late CollectionReference<Map<String, dynamic>> profileRef;

  Future<Either<RideFailure, List<Ride>>> getRidesWithCanncellOption({
    required String option,
  }) async {
    try {
      final ridesData = await profileRef
          .where(
            option,
            isEqualTo: true,
          )
          .get();
      final rides = ridesData.docs.map(docDataToRide).toList();
      return right(rides);
    } catch (e) {
      print(e);
      return left(RideFailure.serverError());
    }
  }

  Future<Either<RideFailure, List<UserDriver>>> getUserDrivers() async {
    try {
      final driversDocs = await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('drivers')
          .get();
      final userDrivers = driversDocs.docs
          .map(
            (doc) => UserDriver.fromJson(
              doc.data(),
            ),
          )
          .toList();
      return right(userDrivers);
    } catch (e) {
      return left(const RideFailure.serverError());
    }
  }

  Ride docDataToRide(QueryDocumentSnapshot<Map<String, dynamic>> rideDoc) {
    final destinationLocation =
        rideDoc.get('destination')?['geopoint'] as GeoPoint?;
    final startLocation = rideDoc.get('start')?['geopoint'] as GeoPoint?;

    return Ride.fromJson(
      rideDoc.data()
        ..putIfAbsent('destinationLng', () => destinationLocation?.longitude)
        ..putIfAbsent('destinationLat', () => destinationLocation?.latitude)
        ..putIfAbsent('startLng', () => startLocation?.longitude)
        ..putIfAbsent('startLat', () => startLocation?.latitude)
        ..putIfAbsent('id', () => rideDoc.id),
    );
  }
}
