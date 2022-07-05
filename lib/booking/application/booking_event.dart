import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/booking/domain/ride.dart';
import 'package:taxidriver/domain/auth/user.dart';

part 'booking_event.freezed.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.bookRideRequested({
    required Ride ride,
    required User user,
    required String driverId,
    required List<String> cnadidatesUids,
  }) = BookRideRequested;

  const factory BookingEvent.bookingsRequested(
    String userUid,
  ) = BookignsRequested;
  const factory BookingEvent.currentBookingCancelled() =
      CurrentBookingCancelled;
}
