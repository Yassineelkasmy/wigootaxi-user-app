import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildLogo({bool white = true, BoxFit? fit}) {
  final String logoAsset = white ? 'logo_white.png' : 'logo_black.png';

  return white
      ? Image.asset(
          "assets/images/$logoAsset",
          fit: fit,
          color: Colors.white,
          width: 0.8.sw,
        )
      : Padding(
          padding: EdgeInsets.all(0.sp),
          child: Image.asset(
            "assets/images/$logoAsset",
            fit: fit,
          width: 0.8.sw,
          ),
        );
}
