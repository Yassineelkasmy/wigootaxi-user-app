import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';
import 'package:taxidriver/presentation/home/widgets/app_bar.dart';
import 'package:taxidriver/presentation/home/widgets/categories_list_view.dart';
import 'package:taxidriver/presentation/home/widgets/home_button.dart';
import 'package:taxidriver/presentation/home/widgets/home_icon.dart';
import 'package:taxidriver/presentation/home/widgets/top_box.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                buildTopBox(context),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "OPTION",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.settings,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                buildCategories(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Commencez votre voyage",
                  style: TextStyle(
                    color: Colors.black,
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
                title: Text(
                  "Choisissez Votre Point De Retrait",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
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
                  height: 20,
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
