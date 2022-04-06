import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxidriver/presentation/auth/phone_auth_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
theme: FlexThemeData.light(scheme: FlexScheme.bahamaBlue).copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
          inputDecorationTheme: const InputDecorationTheme(
            fillColor: Colors.white,
          )),
      debugShowCheckedModeBanner: false,
      home: PhoneAuthPage(),

      
    );
  }
}