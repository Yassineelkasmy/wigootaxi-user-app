import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/booking/application/booking_event.dart';
import 'package:taxidriver/booking/application/booking_state.dart';
import 'package:taxidriver/booking/domain/booking.dart';
import 'package:taxidriver/booking/domain/booking_failure.dart';
import 'package:taxidriver/booking/services/booking_service.dart';
import 'package:taxidriver/driver/domain/driver_record.dart';

class BookingController extends StateNotifier<BookingState> {
  BookingController() : super(BookingState.initial());
  late StreamSubscription<List<Booking>> _subscription;
  StreamSubscription<Booking>? bookingSubscription;
  late StreamSubscription<DriverRecord> driverSubscription;

  initializeStream(String userUid) {
    _subscription = _bookingService.requestsStream(userUid).listen(
      (bookings) async {
        state = state.copyWith(
          bookings: bookings,
        );
      },
    );
  }

  final _bookingService = BookingService();

  Future mapEventToState(BookingEvent event) {
    return event.map(bookRideRequested: (event) async {
      final ride = event.ride;
      final user = event.user;
      state = state.copyWith(bookingRide: true);
      final successOrFailureOption = await _bookingService.bookRide(
        ride: ride,
        userUid: user.uid,
        phone: user.phone!,
        candidatesUids: event.cnadidatesUids,
      );
      successOrFailureOption.fold(
        (l) => null,
        (rideId) {
          bookingSubscription = _bookingService
              .bookingStram(rideId: rideId)
              .listen((booking) async {
            final bookingRide = booking.driverId == null;
            Either<BookingFailure, DriverRecord>? driverFoundOrFailure;
            if (!bookingRide) {
              driverFoundOrFailure = await _bookingService.getDriverRecord(
                driverId: booking.driverId!,
              );
            }
            state = state.copyWith(
              currentBooking: booking,
              bookingRide: bookingRide,
              driverFoundOrFailure: optionOf(driverFoundOrFailure),
            );
          });
        },
      );
    }, bookingsRequested: (event) async {
      initializeStream(event.userUid);
    }, currentBookingCancelled: (_) async {
      bookingSubscription?.cancel();
      state = state.copyWith(currentBooking: null);
    });
  }
}
