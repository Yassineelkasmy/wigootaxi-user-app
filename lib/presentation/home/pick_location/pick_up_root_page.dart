import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taxidriver/presentation/home/pick_location/activate_location_or_map_page.dart';
import 'package:taxidriver/presentation/home/pick_location/pick_up_form.dart';

class PickUpRootPage extends HookConsumerWidget {
  PickUpRootPage({Key? key}) : super(key: key);
  final pickUpPanelController = PanelController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SlidingUpPanel(
        borderRadius: BorderRadius.circular(15),
        maxHeight: 1.sh,
        panel: PickUpForm(
            // isSlidedUp: true,
            ),
        parallaxEnabled: true,
        parallaxOffset: .5,
        minHeight: 1.sh,
        body: ActivateLocationOrMapPage(),
        controller: pickUpPanelController,
      ),
    );
  }
}
