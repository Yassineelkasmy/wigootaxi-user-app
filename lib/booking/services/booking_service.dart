import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:taxidriver/booking/domain/booking.dart';
import 'package:taxidriver/booking/domain/booking_failure.dart';
import 'package:taxidriver/booking/domain/ride.dart';

class BookingService {
  final firestore = FirebaseFirestore.instance;
  Future<Either<BookingFailure, Unit>> bookRide({
    required Ride ride,
    required String userUid,
    required String phone,
  }) async {
    final rideData = {
      'start_place_id': ride.pickUp.placeId,
      'start_name': ride.pickUp.name,
      'start_lat': ride.pickUp.geometry.location.lat,
      'start_lng': ride.pickUp.geometry.location.lng,
      'dest_place_id': ride.droppOff.placeId,
      'dest_name': ride.droppOff.name,
      'dest_lat': ride.droppOff.geometry.location.lat,
      'dest_lng': ride.droppOff.geometry.location.lng,
      'distance': ride.distance,
      'duration': ride.duration,
      'disttext': ride.googelMatrix.rows.first.elements.first.distance.text,
      'durtext': ride.googelMatrix.rows.first.elements.first.duration.text,
      'type': ride.type.name,
      'phone': phone,
      'date': ride.date != null ? Timestamp.fromDate(ride.date!) : null,
      'ts': Timestamp.fromDate(DateTime.now()),
    };
    try {
      final userDoc = await firestore
          .collection('users')
          .doc(userUid)
          .collection('rides')
          .doc()
          .set(rideData);
      await firestore.collection('booking').doc().set(rideData);

      return right(unit);
    } catch (e) {
      return left(const BookingFailure.serverError());
    }
  }

  Stream<List<Booking>> requestsStream(String userUid) {
    final results = firestore
        .collection('users')
        .doc(userUid)
        .collection('rides')
        .orderBy("ts", descending: true)
        .snapshots()
        .asyncMap((data) {
      final requests = data.docs
          .map(
            (doc) => Booking.fromJson(
              (doc.data() as Map<String, dynamic>)
                ..putIfAbsent('id', () => doc.id),
            ),
          )
          .toList();

      return requests;
    });

    return results;
  }
}
