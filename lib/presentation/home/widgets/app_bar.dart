import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    centerTitle: false,
    title: Text(
      'Bonjour !',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    backgroundColor: Colors.transparent,
    leading: Container(
      margin: EdgeInsets.only(left: 10),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/user.jpeg'),
          fit: BoxFit.fitWidth,
        ),
      ),
    ),
    actions: [
      IconButton(
        onPressed: () => {},
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      )
    ],
  );
}
