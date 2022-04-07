import 'package:flutter/material.dart';
import 'package:taxidriver/presentation/home/widgets/app_bar.dart';
import 'package:taxidriver/presentation/home/widgets/categories_list_view.dart';
import 'package:taxidriver/presentation/home/widgets/top_box.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
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
    );
  }
}
