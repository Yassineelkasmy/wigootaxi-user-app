import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/application/providers/pick_ip/pick_up.provider.dart';

class UserLocationIndicator extends HookConsumerWidget {
  const UserLocationIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pickUpState = ref.watch(pickUpProvider);
    return Center(
      child: pickUpState.isGeocodingFromMapLoaidng
          ? CircularProgressIndicator()
          : Icon(
              Icons.person,
            ),
    );
  }
}
