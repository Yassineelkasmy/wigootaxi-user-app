import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:taxidriver/ride/domain/ride.dart';

class RideService {
  final collectionRef = FirebaseFirestore.instance.collection('rides');

  Stream<Ride> rideStream({required String rideId}) {
    final ride = collectionRef.doc(rideId).snapshots().asyncMap((rideDoc) {
      final driverLocation =
          rideDoc.get('currentDriverLocation')?['geopoint'] as GeoPoint?;
      // final userLocation =
      //     rideDoc.get('currentUserLocation')?['geopoint'] as GeoPoint?;

      final destinationLocation =
          rideDoc.get('destination')?['geopoint'] as GeoPoint?;
      final startLocation = rideDoc.get('start')?['geopoint'] as GeoPoint?;

      return Ride.fromJson(
        rideDoc.data()!

          // ..putIfAbsent('userLng', () => userLocation?.longitude)
          ..putIfAbsent('driverLat', () => driverLocation?.latitude)
          ..putIfAbsent('driverLng', () => driverLocation?.longitude)
          ..putIfAbsent('destinationLng', () => destinationLocation?.longitude)
          ..putIfAbsent('destinationLat', () => destinationLocation?.latitude)
          ..putIfAbsent('startLng', () => startLocation?.longitude)
          ..putIfAbsent('startLat', () => startLocation?.latitude)
          ..putIfAbsent('id', () => rideDoc.id),
      );
    });
    return ride;
  }

  Future<void> cancelRide({
    required Ride ride,
  }) async {
    await collectionRef.doc(ride.id).update({
      'cancelledByUser': true,
    });
    try {} catch (e) {}
  }
}
