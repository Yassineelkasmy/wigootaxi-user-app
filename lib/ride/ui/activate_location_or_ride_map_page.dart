import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/location/location_event.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/driver/domain/driver_record.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';
import 'package:taxidriver/providers/ride_provider.dart';
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
