import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/auth/auth_form/auth_form_event.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:taxidriver/domain/auth/user.dart';
import 'package:taxidriver/presentation/theme/colors.dart';

SideDrawer buildSideDrawer(User user, Size size, WidgetRef ref) {
  final autFormController = ref.watch(authFormProvider.notifier);
  return SideDrawer(
    percentage: 0.6,
    direction: Direction.left,
    animation: true,

    // alignment: Alignment.topLeft,
    color: kPrimaryColor,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      height: size.height,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: size.width * 0.15,
                width: size.width * 0.15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(user.photoURL),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bonjour,",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    user.displayName,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          const ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            horizontalTitleGap: 10,
            title: Text(
              "Profile",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.payment,
              color: Colors.white,
            ),
            horizontalTitleGap: 10,
            title: Text(
              "Portefeuille",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.history_outlined,
              color: Colors.white,
            ),
            horizontalTitleGap: 10,
            title: Text(
              "Mes Courses",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            horizontalTitleGap: 10,
            title: Text(
              "Réglages",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              autFormController.mapEventToState(AuthFormEvent.signOutPressed());
            },
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            horizontalTitleGap: 10,
            title: Text(
              "Se déconnecter",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
