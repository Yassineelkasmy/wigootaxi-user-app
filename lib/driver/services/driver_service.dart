import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

class DriverService {
  DriverService() {
    collectionRef = FirebaseFirestore.instance.collection('drivers');
  }

  final geo = Geoflutterfire();
  final locationField = 'location';
  double radius = 10;

  late Query<Map<String, dynamic>> collectionRef;

  Stream<List<DocumentSnapshot<Object?>>> nearbyDriversStream(
      {required double lat, required double lng}) {
    final center = geo.point(latitude: lat, longitude: lng);

    print('center laaat $lat');
    print('center looong $lng');

    Stream<List<DocumentSnapshot>> stream =
        geo.collection(collectionRef: collectionRef).within(
              center: center,
              radius: radius,
              field: locationField,
            );

    return stream;
  }
}
