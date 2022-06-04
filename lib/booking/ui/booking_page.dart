import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';
import 'package:taxidriver/booking/application/booking_event.dart';
import 'package:taxidriver/booking/application/booking_state.dart';
import 'package:taxidriver/booking/domain/ride.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';
import 'package:taxidriver/providers/booking_provider.dart';

class BookingPage extends HookConsumerWidget {
  const BookingPage({
    Key? key,
    required this.ride,
  }) : super(key: key);

  final Ride ride;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String reservationText = 'Réservation : ${typeToString(ride)}';
    if (ride.date != null) {
      reservationText =
          reservationText + ' ${DateFormat('yyyy-MM-dd').format(ride.date!)}';
    }
    final bookingController = ref.watch(bookingProvider.notifier);
    final bookingState = ref.watch(bookingProvider);
    final user = ref.watch(userProvider);
    ref.listen<BookingState>(bookingProvider, ((previous, next) {
      next.bookingFailureOrSuccessOption.map((option) => option.fold(
            (l) => null,
            (success) {
              AutoRouter.of(context)
                  .replace(BookingsPageRoute(fromBooking: true));
            },
          ));
    }));
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: kPadding,
        child: SizedBox(
          width: double.maxFinite,
          child: SubmitButton(
            text: 'Réserver',
            isLoading: bookingState.bookingRide,
            onPressed: () {
              bookingController.mapEventToState(
                BookingEvent.bookRideRequested(ride: ride, user: user!),
              );
            },
          ),
        ),
      ),
      appBar: AppBar(title: Text('Réservation')),
      body: SingleChildScrollView(
        child: Padding(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.h.verticalSpace,
              Text(
                'Détails du trajet',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              20.h.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/icons/flag.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Départ :',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              5.h.verticalSpace,
              Text(
                ride.pickUp.name,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              Text(
                ride.pickUp.vicinity,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              10.h.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/icons/location.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Destination :',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              5.h.verticalSpace,
              Text(
                ride.droppOff.name,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
              Text(
                ride.droppOff.vicinity,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.grey,
                ),
              ),
              10.h.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/icons/distance.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Distance : ${ride.googelMatrix.rows.first.elements.first.distance.text}',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              20.h.verticalSpace,
              Row(
                children: [
                  Image.asset(
                    'assets/icons/duration.png',
                    height: 24.h,
                    width: 24.w,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    'Durée : ${ride.googelMatrix.rows.first.elements.first.duration.text}',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              20.h.verticalSpace,
              Row(
                children: [
                  Icon(
                    Icons.schedule,
                    color: kPrimaryColor,
                  ),
                  4.w.horizontalSpace,
                  Text(
                    reservationText,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
