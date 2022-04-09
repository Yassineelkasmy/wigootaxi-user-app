import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

Widget buildTopBox(BuildContext context, void Function() onPressed) {
  final size = MediaQuery.of(context).size;
  return GestureDetector(
    onTap: onPressed,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: SizedBox(
        height: size.height * .2,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/car.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: FlexColor.blue.light.primary.withOpacity(0.6),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Commencer Votre Voyage",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
