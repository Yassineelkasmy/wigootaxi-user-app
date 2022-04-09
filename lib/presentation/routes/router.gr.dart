// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../auth/login_page.dart' as _i3;
import '../auth/phone_auth_page.dart' as _i2;
import '../auth/signup_page.dart' as _i5;
import '../home/help/send_message_page.dart' as _i9;
import '../home/home_page.dart' as _i6;
import '../home/pick_location/pick_location_page.dart' as _i7;
import '../intro/intro_page.dart' as _i4;
import '../onboarding/onboarding_page.dart' as _i8;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    PhoneAuthPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PhoneAuthPage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.IntroPage());
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>(
          orElse: () => const SignUpPageRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SignUpPage(key: args.key));
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.HomePage(key: args.key));
    },
    PickLocationPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PickLocationPage());
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.OnBoardingPage());
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.SendMessagePage(key: args.key));
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashPageRoute.name, path: '/'),
        _i10.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i10.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i10.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i10.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i10.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i10.RouteConfig(PickLocationPageRoute.name,
            path: '/pick-location-page'),
        _i10.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i10.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i10.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.PhoneAuthPage]
class PhoneAuthPageRoute extends _i10.PageRouteInfo<void> {
  const PhoneAuthPageRoute()
      : super(PhoneAuthPageRoute.name, path: '/phone-auth-page');

  static const String name = 'PhoneAuthPageRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i10.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i11.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.IntroPage]
class IntroPageRoute extends _i10.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpPageRoute extends _i10.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i11.Key? key})
      : super(SignUpPageRoute.name,
            path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'SignUpPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.HomePage]
class HomePageRoute extends _i10.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i11.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.PickLocationPage]
class PickLocationPageRoute extends _i10.PageRouteInfo<void> {
  const PickLocationPageRoute()
      : super(PickLocationPageRoute.name, path: '/pick-location-page');

  static const String name = 'PickLocationPageRoute';
}

/// generated route for
/// [_i8.OnBoardingPage]
class OnBoardingPageRoute extends _i10.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i9.SendMessagePage]
class SendMessagePageRoute
    extends _i10.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i11.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}
