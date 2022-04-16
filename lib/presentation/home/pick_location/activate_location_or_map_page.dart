import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/location/location_event.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';
import 'package:taxidriver/presentation/home/pick_location/location_map.dart';
import 'package:rive/rive.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';

class ActivateLocationOrMapPage extends HookConsumerWidget {
  const ActivateLocationOrMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    final locationController = ref.watch(locationProvider.notifier);
    final pickUpController = ref.watch(pickUpProvider.notifier);
    final pickUpState = ref.watch(pickUpProvider);

    return Scaffold(
      body: locationState.locationData != null
          ? SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: LocationMap(
                locationData: locationState.locationData!,
                onCameraMove: (cameraPosition) {
                  if (pickUpState.pickupPlace == null &&
                      pickUpState.dropoffPlace != null) {
                    pickUpController.mapEventToState(
                      PickUpEvent.reverseGecodingFromMapRequested(
                        cameraPosition.target.latitude,
                        cameraPosition.target.longitude,
                      ),
                    );
                  }
                },
              ),
            )
          : SizedBox(
              height: double.maxFinite,
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
    );
  }
}

class MapAnimation extends StatefulWidget {
  const MapAnimation({Key? key}) : super(key: key);

  @override
  State<MapAnimation> createState() => _MapAnimationState();
}

class _MapAnimationState extends State<MapAnimation> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('map');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 0.3.sh,
        child: Center(
          child: RiveAnimation.asset(
            'assets/animations/map.riv',
            controllers: [_controller],
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}

double calculateDistance(lat1, lon1, lat2, lon2) {
  var p = 0.017453292519943295;
  var c = cos;
  var a = 0.5 -
      c((lat2 - lat1) * p) / 2 +
      c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
  return 12742 * asin(sqrt(a));
}
