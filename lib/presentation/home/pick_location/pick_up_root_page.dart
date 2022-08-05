import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taxidriver/application/pick_up/pick_up_event.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';
import 'package:taxidriver/presentation/home/pick_location/activate_location_or_map_page.dart';
import 'package:taxidriver/presentation/home/pick_location/pick_up_form.dart';

class PickUpRootPage extends HookConsumerWidget {
  PickUpRootPage({Key? key}) : super(key: key);
  final pickUpPanelController = PanelController();
  bool fromCleared = false;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    final pickupController = ref.watch(pickUpProvider.notifier);
    final pickUpState = ref.watch(pickUpProvider);
    if (!fromCleared) {
      pickupController.mapEventToState(PickUpEvent.formCleared());
      fromCleared = true;
    }
    return WillPopScope(
      onWillPop: () async {
        if (pickUpState.dropOffChosen) {
          pickupController.mapEventToState(PickUpEvent.dropOffCancelled());
          return false;
        } else if (pickUpState.pickUpChosen) {
          pickupController.mapEventToState(PickUpEvent.pickupCancelled());
          return false;
        } else {
          final okCancell = await showOkCancelAlertDialog(
            context: context,
            message: 'Êtes-vous sûr de vouloir annuler votre trajet ?',
            title: 'Confirmation',
            okLabel: 'Oui',
            cancelLabel: 'Non',
          );
          if (okCancell.index == 0) {
            pickupController.mapEventToState(PickUpEvent.cleared());
            return true;
          } else {
            return false;
          }
        }
      },
      child: Scaffold(
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
          panel: PickUpForm(
            // isSlidedUp: true,
            panelController: pickUpPanelController,
          ),
          parallaxEnabled: true,
          parallaxOffset: .5,
          minHeight: locationState.position != null ? .3.sh : 0,
          body: ActivateLocationOrMapPage(),
          controller: pickUpPanelController,
        ),
      ),
    );
  }
}
