import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/logo.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';

class PhoneAuthPage extends StatelessWidget {
  const PhoneAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 20,
        ),
        width: double.maxFinite,
        child: SubmitButton(
            onPressed: () => {
                  AutoRouter.of(context).push(HomePageRoute()),
                },
            text: "CONTINUER"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildLogo(white: false),
            Center(
              child: Text(
                "Un code a ete envoye a",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Center(
              child: Text(
                "+212 600000000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (pin) {},
              keyboardType: TextInputType.number,
              cursorColor: kPrimaryColor,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(15),
                activeColor: kPrimaryColor,
                activeFillColor: Colors.grey.shade300,
                selectedColor: kPrimaryColor,
                disabledColor: Colors.grey,
                inactiveColor: Colors.grey,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Align(
              child: Text(
                "Envoyez un autre code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              alignment: Alignment.topCenter,
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
