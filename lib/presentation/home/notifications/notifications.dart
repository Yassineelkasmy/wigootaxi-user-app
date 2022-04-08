import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:taxidriver/presentation/home/widgets/title.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('active');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: kPadding,
        children: [
          SizedBox(height: 20),
          DefaultTabController(
            length: 2,
            child: TabBar(
              indicatorColor: kPrimaryColor,
              labelColor: kPrimaryColor,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Non lu',
                ),
                Tab(
                  text: 'Toute',
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * .8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTitle(text: "Vous n'avez aucune notification"),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: size.height * .2,
                  child: Center(
                    child: RiveAnimation.asset(
                      'assets/animations/notifications.riv',
                      controllers: [_controller],
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
