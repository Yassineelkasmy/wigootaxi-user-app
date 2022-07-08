import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geoflutterfire/geoflutterfire.dart';

class UserService {
  UserService() {
    docRef = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid);
  }
  final geo = Geoflutterfire();
  late DocumentReference<Map<String, dynamic>> docRef;

  updateLocation({
    required double lat,
    required double lng,
    String? currentRideId,
  }) async {
    final lastTs = FieldValue.serverTimestamp();
    final lastSeconds = (DateTime.now().millisecondsSinceEpoch / 1000).round();
    final location = geo
        .point(
          latitude: lat,
          longitude: lng,
        )
        .data;
    try {
      await docRef.update(
        {
          'location': location,
          'lastTs': lastTs,
          'lastSeconds': lastSeconds,
        },
      );
      if (currentRideId != null) {
        FirebaseFirestore.instance
            .collection('rides')
            .doc(currentRideId)
            .update(
          {
            'currentUserLocation': location,
            'lastUserTs': lastTs,
            'lastUserSeconds': lastSeconds,
          },
        );
      }
    } catch (e) {
      print(e);
    }
  }
}
