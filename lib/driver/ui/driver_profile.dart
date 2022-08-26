import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:taxidriver/application/providers/location/location_provider.dart';
import 'package:taxidriver/driver/domain/driver_record.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';
import 'package:taxidriver/providers/ride_provider.dart';
import 'package:taxidriver/ride/application/ride_event.dart';
import 'package:url_launcher/url_launcher.dart';

class DriverProfile extends HookConsumerWidget {
  const DriverProfile({
    Key? key,
    required this.driverRecord,
    required this.panelController,
  }) : super(key: key);
  final DriverRecord driverRecord;
  final PanelController panelController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rideState = ref.watch(rideProvider);
    final locationState = ref.watch(locationProvider);
    final rideController = ref.watch(rideProvider.notifier);

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: kPadding,
          child: Column(
            children: [
              20.h.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: .15.sw,
                        width: .15.sw,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/user.jpg'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      5.w.horizontalSpace,
                      Text(
                        driverRecord.username,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    color: kPrimaryColor,
                    onPressed: () async {
                      launch('tel://${driverRecord.phone}');
                    },
                    icon: Icon(
                      Icons.phone,
                    ),
                  ),
                ],
              ),
              10.h.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Expanded(
                  //   child: SubmitButton(
                  //     onPressed: () {},
                  //     text: 'Commencer',
                  //     color: rideState.driverDistanceFromStart <= 30
                  //         ? Colors.green
                  //         : Colors.grey,
                  //   ),
                  // ),
                  // 5.w.horizontalSpace,
                  Expanded(
                    child: SubmitButton(
                      onPressed: () {
                        showOkCancelAlertDialog(
                          context: context,
                          message: 'Voulez-vous vraiment annuler le trajet?',
                          title: 'Confirmation',
                          okLabel: 'Oui',
                          cancelLabel: 'Non',
                        ).then((okCancell) {
                          if (okCancell.index == 0) {
                            rideController.mapEventToState(
                              RideEvent.rideCancelledByUser(),
                            );
                            AutoRouter.of(context).replace(HomePageRoute());
                          }
                        });
                      },
                      text: 'Annuler',
                    ),
                  ),
                ],
              ),
              10.h.verticalSpace,
              Center(
                child: Text(
                  rideState.rideStarted
                      ? "Vous êtes en route avec le chauffeur, assurez-vous de prendre les mesures de sécurité"
                      : (rideState.driverArrived && !rideState.rideStarted)
                          ? "Le chauffeur vous attend, dépêchez-vous jusqu'au point de départ"
                          : (!rideState.driverArrived)
                              ? "Le conducteur est en route vers le point de départ"
                              : '',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
