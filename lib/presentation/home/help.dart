import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:taxidriver/presentation/home/widgets/help_card.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('Bouncy Cone');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          'Aide et rapport de problème',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * .4,
              child: Center(
                child: RiveAnimation.asset(
                  'assets/animations/help.riv',
                  controllers: [_controller],
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildHelpCard(
              icon: Icon(Icons.message, color: kPrimaryColor),
              text: "Signaler un problème",
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            buildHelpCard(
              icon: Icon(Icons.phone, color: kPrimaryColor),
              text: "Signaler un problème",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
