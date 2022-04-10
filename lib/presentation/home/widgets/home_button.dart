import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildHomeButton({
  required String text,
  required void Function() onPressed,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.indigoAccent),
        borderRadius: BorderRadius.circular(10.r),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(
        color: Colors.indigoAccent,
        fontWeight: FontWeight.bold,
        fontSize: 14.sp,
      ),
    ),
  );
}
