import 'package:flutter/material.dart';

Widget buildLogo({bool white = true, BoxFit? fit}) {
  final String logoAsset = white ? 'logo_white.png' : 'logo_black.png';
  return Image.asset(
    "assets/images/$logoAsset",
    fit: fit,
  );
}
