import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/location/location_event.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/presentation/home/pick_location/location_map.dart';
import 'package:rive/rive.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';

class PickLocationPage extends HookConsumerWidget {
  const PickLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    final locationController = ref.watch(locationProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: false,
        title: Text(
          "Position de départ",
          style: TextStyle(color: Colors.black),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: locationState.locationData != null
          ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: Text(
                  "Continuer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              onPressed: () {},
            )
          : null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (locationState.locationData == null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Text(
                    "Vous n'avez aucune adresse enregistrée",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          if (locationState.locationData == null) ...[
            MapAnimation(),
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
                  text: 'Localisez-moi',
                ),
              ),
            ),
          ],
          SizedBox(height: 20),
          if (locationState.locationData != null)
            Expanded(
              child: LocationMap(
                locationData: locationState.locationData!,
              ),
            ),
        ],
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
    final size = MediaQuery.of(context).size;

    return Expanded(
      child: SizedBox(
        height: size.height * 0.5,
        width: size.width,
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
