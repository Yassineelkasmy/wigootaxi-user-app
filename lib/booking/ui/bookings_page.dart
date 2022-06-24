import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/booking/application/booking_event.dart';
import 'package:taxidriver/presentation/shared/in_app_notfication.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';
import 'package:taxidriver/providers/booking_provider.dart';

class BookingsPage extends HookConsumerWidget {
  BookingsPage({
    Key? key,
    this.fromBooking = false,
  }) : super(key: key);
  bool fromBooking;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (fromBooking) {
      InAppNotification.show(
        duration: Duration(seconds: 5),
        child: InnerNotifications(
          message: 'Votre trajet a été réservé avec succès',
          isScuccess: true,
        ),
        context: context,
      );
      fromBooking = false;
    }
    final bookingController = ref.watch(bookingProvider.notifier);
    final bookingState = ref.watch(bookingProvider);
    final user = ref.watch(userProvider);

    if (bookingState.bookings.isEmpty) {
      bookingController.mapEventToState(
        BookingEvent.bookingsRequested(user!.uid),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes réservations'),
      ),
      body: Padding(
        padding: kPadding,
        child: ListView(
          children: bookingState.bookings
              .map(
                (booking) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: ListTile(
                    onTap: () {},
                    iconColor: kPrimaryColor,
                    title: Text(
                      booking.start_name,
                    ),
                    subtitle: Text(booking.disttext),
                    leading: Icon(CupertinoIcons.car),
                    isThreeLine: true,
                    trailing: Text(
                      booking.durtext,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
