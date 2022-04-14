// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../auth/login_page.dart' as _i4;
import '../auth/phone_auth_page.dart' as _i3;
import '../auth/phone_verification_page.dart' as _i2;
import '../auth/signup_page.dart' as _i6;
import '../home/help/send_message_page.dart' as _i11;
import '../home/home_page.dart' as _i7;
import '../home/pick_location/activate_location_page.dart' as _i8;
import '../home/pick_location/pick_up_root_page.dart' as _i9;
import '../intro/intro_page.dart' as _i5;
import '../onboarding/onboarding_page.dart' as _i10;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    PhoneVerificationPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PhoneVerificationPage());
    },
    PhoneAuthPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PhoneAuthPage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LoginPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.IntroPage());
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>(
          orElse: () => const SignUpPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.SignUpPage(key: args.key));
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.HomePage(key: args.key));
    },
    ActivateLocationPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ActivateLocationPage());
    },
    PickUpRootPageRoute.name: (routeData) {
      final args = routeData.argsAs<PickUpRootPageRouteArgs>(
          orElse: () => const PickUpRootPageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.PickUpRootPage(key: args.key));
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.OnBoardingPage());
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i12.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.SendMessagePage(key: args.key));
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashPageRoute.name, path: '/'),
        _i12.RouteConfig(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page'),
        _i12.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i12.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i12.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i12.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i12.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i12.RouteConfig(ActivateLocationPageRoute.name,
            path: '/activate-location-page'),
        _i12.RouteConfig(PickUpRootPageRoute.name, path: '/pick-up-root-page'),
        _i12.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i12.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i12.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.PhoneVerificationPage]
class PhoneVerificationPageRoute extends _i12.PageRouteInfo<void> {
  const PhoneVerificationPageRoute()
      : super(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page');

  static const String name = 'PhoneVerificationPageRoute';
}

/// generated route for
/// [_i3.PhoneAuthPage]
class PhoneAuthPageRoute extends _i12.PageRouteInfo<void> {
  const PhoneAuthPageRoute()
      : super(PhoneAuthPageRoute.name, path: '/phone-auth-page');

  static const String name = 'PhoneAuthPageRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginPageRoute extends _i12.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i13.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.IntroPage]
class IntroPageRoute extends _i12.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpPageRoute extends _i12.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i13.Key? key})
      : super(SignUpPageRoute.name,
            path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SignUpPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i12.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i13.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.ActivateLocationPage]
class ActivateLocationPageRoute extends _i12.PageRouteInfo<void> {
  const ActivateLocationPageRoute()
      : super(ActivateLocationPageRoute.name, path: '/activate-location-page');

  static const String name = 'ActivateLocationPageRoute';
}

/// generated route for
/// [_i9.PickUpRootPage]
class PickUpRootPageRoute extends _i12.PageRouteInfo<PickUpRootPageRouteArgs> {
  PickUpRootPageRoute({_i13.Key? key})
      : super(PickUpRootPageRoute.name,
            path: '/pick-up-root-page',
            args: PickUpRootPageRouteArgs(key: key));

  static const String name = 'PickUpRootPageRoute';
}

class PickUpRootPageRouteArgs {
  const PickUpRootPageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'PickUpRootPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.OnBoardingPage]
class OnBoardingPageRoute extends _i12.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i11.SendMessagePage]
class SendMessagePageRoute
    extends _i12.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i13.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}
