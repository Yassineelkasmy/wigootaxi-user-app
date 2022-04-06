import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../routes/router.gr.dart';

class AppWidget extends HookConsumerWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
      scrollBehavior: MyCustomScrollBehavior(),
      useInheritedMediaQuery: true,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      title: "WIGO TAXI",
      theme: FlexThemeData.light(scheme: FlexScheme.blue).copyWith(
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
          inputDecorationTheme: const InputDecorationTheme(
            fillColor: Colors.white,
          )),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
