import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/domain/google_matrix/matrix_response.dart';
import 'package:taxidriver/domain/nearby_search/nearby_search.dart';

part 'ride_booking.freezed.dart';

@freezed
class RideBooking with _$RideBooking {
  const factory RideBooking({
    required NearbySearch droppOff,
    required NearbySearch pickUp,
    required RideType type,
    required MatrixResponse googelMatrix,
    required int duration,
    required int distance,
    DateTime? date,
  }) = _RideBooking;
}

String typeToString(RideBooking ride) {
  return ride.type == RideType.now ? 'Maintenant' : 'Prévu le';
}

enum RideType {
  now,
  shceduled,
}
