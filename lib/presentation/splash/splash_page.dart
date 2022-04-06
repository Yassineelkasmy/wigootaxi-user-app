import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:taxidriver/presentation/routes/router.gr.dart';
import 'package:taxidriver/application/providers/auth/auth_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final authState = ref.watch(authtProvider);
    // authState.map(
    //   initial: (_) {},
    //   authenticated: (_) => AutoRouter.of(context).push(HomePageRoute()),
    //   unauthenticated: (_) => AutoRouter.of(context).push(LoginPageRoute()),
    // );
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
