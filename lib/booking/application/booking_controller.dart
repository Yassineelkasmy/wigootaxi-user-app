import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/booking/application/booking_event.dart';
import 'package:taxidriver/booking/application/booking_state.dart';
import 'package:taxidriver/booking/domain/ride.dart';
import 'package:taxidriver/booking/services/booking_service.dart';

import '../../domain/auth/user.dart';

class BookingController extends StateNotifier<BookingState> {
  BookingController({
    required this.ride,
    required this.user,
  }) : super(BookingState.initial());

  final _bookingService = BookingService();
  final Ride ride;
  final User user;

  Future mapEventToState(BookingEvent event) {
    return event.map(bookRideRequested: (event) async {
      state = state.copyWith(bookingRide: true);
      final successOrFailureOption = await _bookingService.bookRide(
        ride: ride,
        userUid: user.uid,
        phone: user.phone!,
      );
      state = state.copyWith(
        bookingRide: false,
        bookingFailureOrSuccessOption: optionOf(successOrFailureOption),
      );
    });
  }
}
