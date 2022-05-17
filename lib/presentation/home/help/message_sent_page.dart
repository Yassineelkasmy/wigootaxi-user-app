import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/presentation/shared/submit_button.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/presentation/theme/spacings.dart';

class MessageSentPage extends StatelessWidget {
  const MessageSentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kPrimaryColor,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.check,
                color: kPrimaryColor,
                size: 64,
              ),
            ),
            20.h.verticalSpace,
            Text(
              'Votre rapport est en cours de traitement',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            10.h.verticalSpace,
            Text(
              'Nous nous assurerons que les détails de votre rapport sont corrects et vous répondrons dans les plus brefs délais.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.sp,
              ),
            ),
            60.h.verticalSpace,
            SizedBox(
              width: double.maxFinite,
              child: SubmitButton(
                onPressed: () {
                  AutoRouter.of(context)
                      .popUntilRouteWithName(HomePageRoute.name);
                },
                text: "D'accord",
              ),
            )
          ],
        ),
      ),
    );
  }
}
