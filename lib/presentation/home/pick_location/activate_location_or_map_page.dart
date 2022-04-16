import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/location/location_event.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
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

    return Scaffold(
      body: locationState.locationData != null
          ? SizedBox(
              height: double.maxFinite,
              width: double.maxFinite,
              child: LocationMap(
                locationData: locationState.locationData!,
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
