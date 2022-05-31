import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';
import 'package:taxidriver/presentation/theme/colors.dart';

class UserLocationIndicator extends HookConsumerWidget {
  const UserLocationIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickUpState = ref.watch(pickUpProvider);
    return Center(
      child: pickUpState.isGeocodingFromMapLoaidng ||
              pickUpState.loadingRideDetails
          ? CircularProgressIndicator()
          : pickUpState.ride != null
              ? TextButton.icon(
                  style: TextButton.styleFrom(
                      elevation: 8,
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      )),
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
                )
              : Icon(
                  Icons.person,
                ),
    );
  }
}
