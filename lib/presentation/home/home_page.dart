import 'package:auto_route/auto_route.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/auth/auth_state.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/presentation/home/help/help.dart';
import 'package:taxidriver/presentation/home/home.dart';
import 'package:taxidriver/presentation/home/notifications/notifications.dart';
import 'package:taxidriver/presentation/home/reservation.dart';
import 'package:taxidriver/presentation/home/widgets/bottom_nav_bar.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/prototype/users.dart';

import 'widgets/side_drawer.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final user = ref.watch(userProvider);
    ref.listen<AuthState>(authtProvider, (_, authState) {
      authState.mapOrNull(
        unauthenticated: (unauth) {
          AutoRouter.of(context).replace(SplashPageRoute());
        },
      );
    });
    final _drawerScaffoldController = DrawerScaffoldController();

    final pages = [
      Home(
        drawerScaffoldController: _drawerScaffoldController,
      ),
      Reservation(),
      Notifications(),
      Help(),
    ];
    return DrawerScaffold(
      controller: _drawerScaffoldController,
      drawers: [
        buildSideDrawer(user ?? protoUser, size, ref),
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
    );
  }
}
