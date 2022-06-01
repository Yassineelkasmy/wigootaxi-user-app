import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
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
      'type': ride.type.toString(),
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
}
