import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/presentation/home/help.dart';
import 'package:taxidriver/presentation/home/home.dart';
import 'package:taxidriver/presentation/home/notifications.dart';
import 'package:taxidriver/presentation/home/reservation.dart';
import 'package:taxidriver/presentation/home/widgets/bottom_nav_bar.dart';
import 'package:taxidriver/prototype/users.dart';

import 'widgets/side_drawer.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
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
        buildSideDrawer(protoUser, size),
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
