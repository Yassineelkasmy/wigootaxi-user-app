import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/location/location_state.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';

class PickUpForm extends HookConsumerWidget {
  const PickUpForm({Key? key, this.isSlidedUp = false}) : super(key: key);
  final bool isSlidedUp;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickUpController = ref.watch(pickUpProvider.notifier);
    final locationState = ref.watch(locationProvider);
    ref.listen<LocationState>(
      locationProvider,
      (prevLocationState, nextLocationState) {
        if (nextLocationState.locationData != null) {
          pickUpController.mapEventToState(
            PickUpEvent.nearbyLocationsRequested(
                locationState.locationData!.latitude!,
                locationState.locationData!.longitude!),
          );
        }
      },
    );

    Widget pickUpContent = Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SizedBox(
          height: double.maxFinite,
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'Where To ?',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
    return isSlidedUp
        ? MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: pickUpContent,
          )
        : pickUpContent;
  }
}
