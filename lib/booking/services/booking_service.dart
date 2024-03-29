import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:taxidriver/booking/domain/booking.dart';
import 'package:taxidriver/booking/domain/booking_failure.dart';
import 'package:taxidriver/booking/domain/ride_booking.dart';
import 'package:taxidriver/driver/domain/driver_record.dart';
import 'package:uuid/uuid.dart';

class BookingService {
  final geo = Geoflutterfire();

  final firestore = FirebaseFirestore.instance;
  Future<Either<BookingFailure, String>> bookRide({
    required RideBooking ride,
    required String userUid,
    required String phone,
    required List<String> candidatesUids,
  }) async {
    final rideData = {
      'start_place_id': ride.pickUp.placeId,
      'start_name': ride.pickUp.name,
      'startLat': ride.pickUp.geometry.location.lat,
      'startLng': ride.pickUp.geometry.location.lng,
      'start': geo
          .point(
            latitude: ride.pickUp.geometry.location.lat,
            longitude: ride.pickUp.geometry.location.lng,
          )
          .data,
      'destination': geo
          .point(
            latitude: ride.droppOff.geometry.location.lat,
            longitude: ride.droppOff.geometry.location.lng,
          )
          .data,
      'dest_place_id': ride.droppOff.placeId,
      'dest_name': ride.droppOff.name,
      'distance': ride.distance,
      'duration': ride.duration,
      'disttext': ride.googelMatrix.rows.first.elements.first.distance.text,
      'durtext': ride.googelMatrix.rows.first.elements.first.duration.text,
      'type': ride.type.name,
      'phone': phone,
      'date': ride.date != null ? Timestamp.fromDate(ride.date!) : null,
      'ts': FieldValue.serverTimestamp(),
      'candidatesUids': candidatesUids,
      'userUid': userUid,
    };
    try {
      final rideId = Uuid().v4();

      await firestore.collection('booking').doc(rideId).set(
            rideData..putIfAbsent('rideId', () => rideId),
          );

      return right(rideId);
    } catch (e) {
      return left(const BookingFailure.serverError());
    }
  }

  Stream<List<Booking>> requestsStream(String userUid) {
    final results = firestore
        .collection('users')
        .doc(userUid)
        .collection('booking')
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

  Stream<Booking> bookingStram({
    required String rideId,
  }) {
    final result =
        firestore.collection('booking').doc(rideId).snapshots().asyncMap(
              (doc) => Booking.fromJson(
                (doc.data() as Map<String, dynamic>)
                  ..putIfAbsent('id', () => doc.id),
              ),
            );
    return result;
  }

  Future<Either<BookingFailure, DriverRecord>> getDriverRecord({
    required String driverId,
  }) async {
    try {
      final driverDoc = await FirebaseFirestore.instance
          .collection('drivers')
          .doc(driverId)
          .get();
      final location = driverDoc.get('location')['geopoint'] as GeoPoint;

      final driverRecord = DriverRecord.fromJson(
        driverDoc.data()!
          ..putIfAbsent('id', () => driverId)
          ..putIfAbsent('lng', () => location.longitude)
          ..putIfAbsent(
            'lat',
            () => location.latitude,
          ),
      );
      return right(driverRecord);
    } catch (e) {
      print(e);
      return left(const BookingFailure.serverError());
    }
  }
}
