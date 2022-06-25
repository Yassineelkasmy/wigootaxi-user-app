import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/booking/application/booking_controller.dart';
import 'package:taxidriver/booking/application/booking_state.dart';

final bookingProvider =
    StateNotifierProvider.autoDispose<BookingController, BookingState>((ref) {
  final bookingController = BookingController();
  return bookingController;
});
