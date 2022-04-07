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
      theme: FlexThemeData.light(
        scheme: FlexScheme.material,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        blendLevel: 18,
        appBarStyle: FlexAppBarStyle.primary,
        appBarOpacity: 0.95,
        appBarElevation: 0,
        transparentStatusBar: true,
        tabBarStyle: FlexTabBarStyle.forAppBar,
        tooltipsMatchBackground: true,
        swapColors: false,
        lightIsWhite: false,
        useSubThemes: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        subThemesData: const FlexSubThemesData(
          useTextTheme: true,
          fabUseShape: true,
          interactionEffects: true,
          bottomNavigationBarElevation: 0,
          bottomNavigationBarOpacity: 0.95,
          navigationBarOpacity: 0.95,
          navigationBarMutedUnselectedText: true,
          navigationBarMutedUnselectedIcon: true,
          inputDecoratorIsFilled: true,
          inputDecoratorBorderType: FlexInputBorderType.outline,
          inputDecoratorUnfocusedHasBorder: true,
          inputDecoratorFillColor: Colors.white,
          blendOnColors: true,
          blendTextTheme: true,
          popupMenuOpacity: 0.95,
        ),
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.material,
        surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
        blendLevel: 18,
        appBarStyle: FlexAppBarStyle.background,
        appBarOpacity: 0.95,
        appBarElevation: 0,
        transparentStatusBar: true,
        tabBarStyle: FlexTabBarStyle.forAppBar,
        tooltipsMatchBackground: true,
        swapColors: false,
        darkIsTrueBlack: false,
        useSubThemes: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        subThemesData: const FlexSubThemesData(
          useTextTheme: true,
          fabUseShape: true,
          interactionEffects: true,
          bottomNavigationBarElevation: 0,
          bottomNavigationBarOpacity: 0.95,
          navigationBarOpacity: 0.95,
          navigationBarMutedUnselectedText: true,
          navigationBarMutedUnselectedIcon: true,
          inputDecoratorIsFilled: true,
          inputDecoratorBorderType: FlexInputBorderType.outline,
          inputDecoratorUnfocusedHasBorder: true,
          blendOnColors: true,
          blendTextTheme: true,
          popupMenuOpacity: 0.95,
        ),
      ).copyWith(
        textTheme:
            GoogleFonts.rubikBeastlyTextTheme(ThemeData.light().textTheme),
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
        ),
      ),
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
