import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  SubmitButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.color,
    this.textColor,
  }) : super(key: key);
  final void Function() onPressed;
  final String text;
  final Color? color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
