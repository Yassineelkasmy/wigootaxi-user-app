import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/presentation/home/pick_location/activate_location_or_map_page.dart';
import 'package:taxidriver/presentation/home/pick_location/pick_up_form.dart';

class PickUpRootPage extends HookConsumerWidget {
  PickUpRootPage({Key? key}) : super(key: key);
  final pickUpPanelController = PanelController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationState = ref.watch(locationProvider);
    return WillPopScope(
      onWillPop: () async {
        final okCancell = await showOkCancelAlertDialog(
          context: context,
          message: 'Êtes-vous sûr de vouloir annuler votre trajet ?',
          title: 'Confirmation',
          okLabel: 'Oui',
          cancelLabel: 'Non',
        );
        if (okCancell.index == 0) {
          return true;
        } else {
          return false;
        }
      },
      child: Scaffold(
        body: SlidingUpPanel(
          borderRadius: BorderRadius.circular(15),
          maxHeight: .8.sh,
          panel: PickUpForm(
            // isSlidedUp: true,
            panelController: pickUpPanelController,
          ),
          parallaxEnabled: true,
          parallaxOffset: .5,
          minHeight: locationState.locationData != null ? .3.sh : 0,
          body: ActivateLocationOrMapPage(),
          controller: pickUpPanelController,
        ),
      ),
    );
  }
}
