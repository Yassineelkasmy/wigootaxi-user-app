import 'package:flutter/material.dart';

Widget buildTitle({
  required String text,
  Color? color,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: 18,
      fontWeight: fontWeight ?? FontWeight.bold,
    ),
  );
}

Widget buildSubTitle({
  required String text,
  Color? color,
  FontWeight? fontWeight,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: 14,
      fontWeight: fontWeight ?? FontWeight.bold,
    ),
  );
}
