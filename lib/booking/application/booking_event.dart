import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/booking/domain/ride.dart';
import 'package:taxidriver/domain/auth/user.dart';

part 'booking_event.freezed.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.bookRideRequested({
    required Ride ride,
    required User user,
  }) = BookRideRequested;
}
