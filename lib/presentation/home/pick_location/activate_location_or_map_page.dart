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
                          20.h.verticalSpace,
                          Text(
                            pickUpState.pickUpChosen
                                ? 'Annuler le départ'
                                : pickUpState.dropOffChosen
                                    ? 'Annuler la destination'
                                    : 'Annuler',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        if (pickUpState.dropOffChosen) {
                          pickUpController
                              .mapEventToState(PickUpEvent.dropOffCancelled());
                        } else if (pickUpState.pickUpChosen) {
                          pickUpController
                              .mapEventToState(PickUpEvent.pickupCancelled());
                        } else {
                          Navigator.of(context).pop();
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Positioned.fill(
                          bottom: .3.sh,
                          child: LocationMap(
                            lat: locationState.position!.latitude,
                            long: locationState.position!.longitude,
                            onCameraIdle: () {
                              if (!pickUpState.pickUpChosen ||
                                  !pickUpState.dropOffChosen) {
                                pickUpController.mapEventToState(
                                  PickUpEvent.reverseGecodingFromMapRequested(),
                                );
                              }
                            },
                            onCameraMove: (cameraPosition) {
                              pickUpController.mapEventToState(
                                PickUpEvent.cameraMoved(
                                  cameraPosition.target.latitude,
                                  cameraPosition.target.longitude,
                                ),
                              );
                            },
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
