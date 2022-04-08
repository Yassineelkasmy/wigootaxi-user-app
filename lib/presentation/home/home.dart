import 'package:auto_route/auto_route.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:taxidriver/presentation/home/widgets/app_bar.dart';
import 'package:taxidriver/presentation/home/widgets/categories_list_view.dart';
import 'package:taxidriver/presentation/home/widgets/home_button.dart';
import 'package:taxidriver/presentation/home/widgets/home_icon.dart';
import 'package:taxidriver/presentation/home/widgets/top_box.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';

class Home extends StatelessWidget {
  Home({
    Key? key,
    required this.drawerScaffoldController,
  }) : super(key: key);
  final DrawerScaffoldController drawerScaffoldController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        menuPressed: () {
          drawerScaffoldController.openDrawer();
        },
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTopBox(context),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "OPTION",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                buildCategories(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Commencez votre voyage",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          EnhanceStepper(
            currentStep: 0,
            stepIconSize: 36,
            controlsBuilder: (_, __) {
              return Row();
            },
            physics: ClampingScrollPhysics(),
            steps: [
              EnhanceStep(
                icon: buildHomeIcon('home_icon2'),
                title: GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(PickLocationPageRoute());
                  },
                  child: Text(
                    "Choisissez Votre Point De Retrait",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Text(
                  "Tanger, Val Flueri",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                content: SizedBox(),
              ),
              EnhanceStep(
                icon: buildHomeIcon('home_icon1'),
                title: Text(
                  "Choisissez Votre Destination",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Text('content'),
                subtitle: Text(
                  "Tanger, Val Flueri",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ],
          ),
          Padding(
            padding: kPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Envoyer Ou Faire Une Demande De Credit',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      buildHomeIcon('home_icon5'),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Partager Un Traget ?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Envoyer Ou Demander De Credit",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildHomeButton(
                      text: "Envoyer un credit",
                      onPressed: () => {},
                    ),
                    buildHomeButton(
                      text: "Demander un credit",
                      onPressed: () => {},
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
