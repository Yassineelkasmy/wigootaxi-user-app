import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/location/location_event.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/driver/domain/driver_record.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';
import 'package:taxidriver/profile/application/profile_event.dart';
import 'package:taxidriver/providers/profile_provider.dart';
import 'package:taxidriver/providers/ride_provider.dart';
import 'package:taxidriver/ride/application/ride_event.dart';
import 'package:taxidriver/ride/application/ride_state.dart';
import 'package:taxidriver/ride/ui/ride_map.dart';
import 'package:taxidriver/shared/ui/map_animation.dart';

class ActivateLocationOrRideMapPage extends HookConsumerWidget {
  const ActivateLocationOrRideMapPage({
    Key? key,
    required this.driverRecord,
  }) : super(key: key);
  final DriverRecord driverRecord;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    final locationController = ref.watch(locationProvider.notifier);

    final rideState = ref.watch(rideProvider);
    final rideController = ref.watch(rideProvider.notifier);
    final profileController = ref.read(profileProvider.notifier);

    ref.listen<RideState>(
      rideProvider,
      (previous, next) {
        if (next.rideCancelled) {
          rideController.mapEventToState(RideEvent.rideCleared());

          AutoRouter.of(context).replace(HomePageRoute());
          AutoRouter.of(context).push(
            RideCancelledPageRoute(message: 'Le chuffeur a annulé le voyage'),
          );

          profileController.refresh();
        }

        if (next.rideFinished) {
          rideController.mapEventToState(RideEvent.rideCleared());

          AutoRouter.of(context).replace(HomePageRoute());
          AutoRouter.of(context).push(
            RideFinishedPageRoute(
              startname: next.currentRide!.start_name!,
              destname: next.currentRide!.dest_name!,
              totalPrice: ((next.distanceTravelled / 1000) *
                  rideState.currentRide!.price_per_km),
              totalDistance: next.distanceTravelled,
            ),
          );

          profileController.refresh();
        }
      },
    );

    return Scaffold(
      body: locationState.position != null
          ? SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Positioned.fill(
                          child: RideMap(
                            lat: driverRecord.lat,
                            long: driverRecord.lng,
                            onCameraIdle: () {},
                            onCameraMove: (cameraPosition) {},
                          ),
                        ),
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
