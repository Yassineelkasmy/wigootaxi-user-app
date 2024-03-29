import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/driver/domain/driver_record.dart';
import 'package:taxidriver/driver/ui/driver_profile.dart';
import 'package:taxidriver/ride/ui/activate_location_or_ride_map_page.dart';

class RideRootPage extends HookConsumerWidget {
  RideRootPage({
    Key? key,
    required this.driverRecord,
  }) : super(key: key);
  final pickUpPanelController = PanelController();
  final DriverRecord driverRecord;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    return Scaffold(
      body: SlidingUpPanel(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        borderRadius: BorderRadius.circular(15),
        maxHeight: .8.sh,
        panel: DriverProfile(
          // isSlidedUp: true,
          driverRecord: driverRecord,
          panelController: pickUpPanelController,
        ),
        parallaxEnabled: true,
        parallaxOffset: .5,
        minHeight: locationState.position != null ? .3.sh : 0,
        body: ActivateLocationOrRideMapPage(
          driverRecord: driverRecord,
        ),
        controller: pickUpPanelController,
      ),
    );
  }
}
