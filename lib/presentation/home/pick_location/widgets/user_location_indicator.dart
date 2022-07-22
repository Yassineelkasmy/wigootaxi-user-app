import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';

class UserLocationIndicator extends HookConsumerWidget {
  const UserLocationIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickUpState = ref.watch(pickUpProvider);
    return pickUpState.ride != null
        ? Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(
                top: 20.h,
              ),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  elevation: 8,
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  Icons.timer,
                  size: 32,
                ),
                label: Text(
                  pickUpState.ride!.googelMatrix.rows.first.elements.first
                      .duration.text,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          )
        : Center(
            child: pickUpState.isGeocodingFromMapLoaidng ||
                    pickUpState.loadingRideDetails
                ? CircularProgressIndicator()
                : Icon(
                    Icons.person,
                  ),
          );
  }
}
