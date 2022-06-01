import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_event.freezed.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.bookRideRequested() = BookRideRequested;
}
