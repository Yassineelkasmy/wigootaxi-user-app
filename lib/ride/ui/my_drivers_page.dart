import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/presentation/theme/colors.dart';
import 'package:taxidriver/providers/profile_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDriversPage extends HookConsumerWidget {
  MyDriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Mes pilotes'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final userDriver = profileState.userDrivers[index];

                return ExpansionTile(
                  title: Text(userDriver.username),
                  subtitle: Row(
                    children: [
                      Text('La dernière course'),
                      5.w.horizontalSpace,
                      Text(DateFormat("yyyy/MM/dd")
                          .format(userDriver.lastRideTs)),
                    ],
                  ),
                  children: [
                    ListTile(
                        title: Text(
                          'Courses: ${userDriver.rides}',
                        ),
                        leading: Icon(
                          Icons.drive_eta,
                          color: kPrimaryColor,
                        )),
                    ListTile(
                      title: Row(
                        children: [
                          Text(
                            'Téléphone: ${userDriver.phone}',
                          ),
                          10.w.horizontalSpace,
                          IconButton(
                            color: kPrimaryColor,
                            onPressed: () async {
                              launch('tel://${userDriver.phone}');
                            },
                            icon: Icon(
                              Icons.phone,
                            ),
                          ),
                        ],
                      ),
                      leading: Icon(
                        Icons.contact_phone,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                  iconColor: kPrimaryColor,
                  leading: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                );
              },
              itemCount: profileState.userDrivers.length,
            ),
          ),
        ],
      ),
    );
  }
}
