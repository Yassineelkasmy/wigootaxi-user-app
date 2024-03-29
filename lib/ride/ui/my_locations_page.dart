import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/providers/profile_provider.dart';

class MyLocationsPage extends HookConsumerWidget {
  const MyLocationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes lieux'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        child: ListView.builder(
          itemBuilder: (context, index) {
            final ride = profileState.finishedRides[index];
            return Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(12.r),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12.r)),
                padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
                child: ListTile(
                  leading: Icon(
                    Icons.location_history,
                    color: kPrimaryColor,
                  ),
                  title: Text(ride.dest_name!),
                  subtitle: Text(
                    DateFormat('dd/MM/yyyy HH:mm').format(ride.ts),
                  ),
                ),
              ),
            );
          },
          itemCount: profileState.finishedRides.length,
        ),
      ),
    );
  }
}
