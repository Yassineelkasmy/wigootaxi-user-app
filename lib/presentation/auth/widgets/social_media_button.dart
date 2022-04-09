import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../application/auth/auth_form/auth_form_event.dart';
import '../../routes/router.gr.dart';
import '../../theme/colors.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
    required this.onFacebookPressed,
    required this.onGooglePressed,
    required this.text,
  }) : super(key: key);
  final void Function() onFacebookPressed;
  final void Function() onGooglePressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: onFacebookPressed,
              child: SvgPicture.asset(
                "assets/icons/facebook.svg",
                height: 32,
                width: 32,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
            SizedBox(
              width: 16,
            ),
            ElevatedButton(
              onPressed: onGooglePressed,
              child: SvgPicture.asset(
                "assets/icons/google.svg",
                height: 32,
                width: 32,
                color: Colors.white,
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
