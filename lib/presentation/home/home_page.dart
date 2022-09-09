import 'package:auto_route/auto_route.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:im_animations/im_animations.dart';
import 'package:taxidriver/application/auth/auth_state.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/presentation/home/help/help.dart';
import 'package:taxidriver/presentation/home/home.dart';
import 'package:taxidriver/presentation/home/notifications/notifications.dart';
import 'package:taxidriver/presentation/home/reservation_page.dart';
import 'package:taxidriver/presentation/home/widgets/bottom_nav_bar.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/prototype/users.dart';
import 'package:taxidriver/providers/profile_provider.dart';
import 'package:taxidriver/providers/ride_provider.dart';
import 'package:taxidriver/ride/application/ride_event.dart';

import 'widgets/side_drawer.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    final profileState = ref.watch(profileProvider);
    final rideController = ref.read(rideProvider.notifier);
    ref.listen<AuthState>(authtProvider, (_, authState) {
      authState.mapOrNull(
        unauthenticated: (unauth) {
          // AutoRouter.of(context).popUntilRouteWithName(SplashPageRoute.name);
        },
      );
    });
    final _drawerScaffoldController = DrawerScaffoldController();

    final pages = [
      Home(
        drawerScaffoldController: _drawerScaffoldController,
      ),
      ReservationPage(),
      Notifications(),
      Help(),
    ];
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop(animated: true);
        return false;
      },
      child: DrawerScaffold(
        floatingActionButton: profileState.driverRecord != null
            ? Sonar(
                radius: 50.r,
                waveColor: kPrimaryColor,
                child: FloatingActionButton(
                  backgroundColor: kPrimaryColor,
                  onPressed: () {
                    AutoRouter.of(context).push(
                      RideRootPageRoute(
                        driverRecord: profileState.driverRecord!,
                      ),
                    );

                    rideController.mapEventToState(
                      RideEvent.rideInitialized(
                        profileState.userProfile.currentRideId!,
                      ),
                    );
                  },
                  child: Icon(
                    Icons.drive_eta,
                    color: Colors.white,
                  ),
                ),
              )
            : null,
        controller: _drawerScaffoldController,
        drawers: [
          if (user != null) buildSideDrawer(user, ref, context),
        ],
        bottomNavigationBar: BottomNavBar(
          onTap: (i) {
            pageController.animateToPage(
              i,
              duration: Duration(milliseconds: 200),
              curve: Curves.linear,
            );
          },
        ),
        body: PageView(
          controller: pageController,
          children: pages,
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}
