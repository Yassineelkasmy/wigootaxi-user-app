import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/auth/auth_state.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/presentation/home/help/help.dart';
import 'package:taxidriver/presentation/home/home.dart';
import 'package:taxidriver/presentation/home/notifications/notifications.dart';
import 'package:taxidriver/presentation/home/reservation_page.dart';
import 'package:taxidriver/presentation/home/widgets/bottom_nav_bar.dart';
import 'package:taxidriver/prototype/users.dart';

import 'widgets/side_drawer.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
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
        controller: _drawerScaffoldController,
        drawers: [
          buildSideDrawer(user ?? protoUser, ref, context),
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
