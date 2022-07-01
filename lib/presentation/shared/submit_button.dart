import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubmitButton extends StatelessWidget {
  SubmitButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.color,
    this.textColor,
    this.loadingText,
  }) : super(key: key);
  final void Function() onPressed;
  final String text;
  String? loadingText;
  final Color? color;
  final Color? textColor;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.symmetric(vertical: 16.sp),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
      ),
      onPressed: onPressed,
      child: isLoading
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (loadingText != null)
                  Text(
                    loadingText!,
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                10.w.horizontalSpace,
                CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],
            )
          : Text(
              text,
              style: TextStyle(
                color: textColor,
              ),
            ),
    );
  }
}
