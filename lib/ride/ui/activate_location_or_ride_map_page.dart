import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/location/location_event.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';
import 'package:taxidriver/shared/ui/map_animation.dart';

class ActivateLocationOrRideMapPage extends HookConsumerWidget {
  const ActivateLocationOrRideMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    final locationController = ref.watch(locationProvider.notifier);

    return Scaffold(
      body: locationState.position != null
          ? SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      child: Column(
                        children: [
                          // 20.h.verticalSpace,
                          // Text(
                          //   pickUpState.pickUpChosen
                          //       ? 'Annuler le départ'
                          //       : pickUpState.dropOffChosen
                          //           ? 'Annuler la destination'
                          //           : 'Annuler',
                          //   style: TextStyle(
                          //     fontSize: 18,
                          //   ),
                          // ),
                        ],
                      ),
                      onPressed: () {
                        // if (pickUpState.dropOffChosen) {
                        //   pickUpController
                        //       .mapEventToState(PickUpEvent.dropOffCancelled());
                        // } else if (pickUpState.pickUpChosen) {
                        //   pickUpController
                        //       .mapEventToState(PickUpEvent.pickupCancelled());
                        // } else {
                        //   Navigator.of(context).pop();
                        // }
                      },
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        // Positioned.fill(
                        //   bottom: .3.sh,
                        //   child: LocationMap(
                        //     lat: locationState.position!.latitude,
                        //     long: locationState.position!.longitude,
                        //     onCameraIdle: () {
                        //       if (!pickUpState.pickUpChosen ||
                        //           !pickUpState.dropOffChosen) {
                        //         pickUpController.mapEventToState(
                        //           PickUpEvent.reverseGecodingFromMapRequested(),
                        //         );
                        //       }
                        //     },
                        //     onCameraMove: (cameraPosition) {
                        //       pickUpController.mapEventToState(
                        //         PickUpEvent.cameraMoved(
                        //           cameraPosition.target.latitude,
                        //           cameraPosition.target.longitude,
                        //         ),
                        //       );
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ))
          : SizedBox(
              height: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 20.h,
                ),
                child: Column(
                  children: [
                    40.h.verticalSpace,
                    Text(
                      "Pour une meilleure expérience, donnez-nous accès à votre position actuelle via votre GPS mobile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                    20.h.verticalSpace,
                    SizedBox(
                      width: double.maxFinite,
                      child: Padding(
                        padding: kPadding,
                        child: SubmitButton(
                          onPressed: () {
                            locationController.mapEventToState(
                              LocationEvent.locationRequested(),
                            );
                          },
                          text: "Autoriser l'accès au GPS",
                        ),
                      ),
                    ),
                    MapAnimation(),
                  ],
                ),
              ),
            ),
    );
  }
}