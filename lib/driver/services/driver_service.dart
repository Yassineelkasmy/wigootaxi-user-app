import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

class DriverService {
  DriverService() {
    collectionRef = FirebaseFirestore.instance.collection('drivers');
  }

  final geo = Geoflutterfire();
  final locationField = 'location';
  double radius = 100;

  late Query<Map<String, dynamic>> collectionRef;

  Stream<List<DocumentSnapshot>> nearbyDriversStream(
      {required double lat, required double lng}) {
    final center = geo.point(latitude: lat, longitude: lng);

    Stream<List<DocumentSnapshot>> stream = geo
        .collection(
          collectionRef: collectionRef,
        )
        .within(
          center: center,
          radius: radius,
          field: locationField,
        );

    return stream;
  }
}
