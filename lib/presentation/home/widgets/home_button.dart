import 'package:flutter/material.dart';

Widget buildHomeButton({
  required String text,
  required void Function() onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.lightBlue.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    onPressed: onPressed,
    child: Text(text),
  );
}
