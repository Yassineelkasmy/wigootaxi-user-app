import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:intl/intl.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/booking/application/booking_event.dart';
import 'package:taxidriver/booking/application/booking_state.dart';
import 'package:taxidriver/booking/domain/ride.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/in_app_notfication.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';
import 'package:taxidriver/providers/booking_provider.dart';

class BookingPage extends HookConsumerWidget {
  const BookingPage({
    Key? key,
    required this.ride,
    required this.driverId,
    required this.cnadidatesUids,
  }) : super(key: key);

  final Ride ride;
  final String driverId;
  final List<String> cnadidatesUids;

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
      //Listen if the booking has been cancelled
      if (previous?.currentBooking?.cancelled !=
          next.currentBooking?.cancelled) {
        if (next.currentBooking?.cancelled == true) {
          InAppNotification.show(
            duration: Duration(seconds: 10),
            child: InnerNotifications(
              message:
                  "Aucun des conducteurs à proximité n'a accepté votre offre de covoiturage, essayez de faire une autre demande",
              isScuccess: false,
            ),
            context: context,
          );
        }
      }
      next.driverFoundOrFailure.map(
        (option) => option.fold(
          (l) => null,
          (driverRecord) {
            AutoRouter.of(context).replace(
              ActivateLocationOrRideMapPageRoute(
                driverRecord: driverRecord,
                booking: bookingState.currentBooking!,
              ),
            );
          },
        ),
      );
    }));
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: kPadding,
        child: SizedBox(
          width: double.maxFinite,
          child: SubmitButton(
            text: ride.type == RideType.now
                ? 'Trouvez votre capitaine'
                : 'Réserver',
            isLoading: bookingState.bookingRide,
            loadingText: "En attente d'un chauffeur",
            onPressed: () {
              if (!bookingState.bookingRide) {
                bookingController.mapEventToState(
                  BookingEvent.bookRideRequested(
                    ride: ride,
                    user: user!,
                    driverId: driverId,
                    cnadidatesUids: cnadidatesUids,
                  ),
                );
              }
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
