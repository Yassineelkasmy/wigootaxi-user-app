import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Reservation extends StatelessWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          "Réservations",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
