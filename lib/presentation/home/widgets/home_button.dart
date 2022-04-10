import 'package:flutter/material.dart';

Widget buildHomeButton({
  required String text,
  required void Function() onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.indigoAccent),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(color: Colors.indigoAccent, fontWeight: FontWeight.bold),
    ),
  );
}
