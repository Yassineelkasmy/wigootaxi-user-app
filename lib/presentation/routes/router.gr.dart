// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../auth/login_page.dart' as _i3;
import '../auth/phone_auth_page.dart' as _i2;
import '../auth/signup_page.dart' as _i5;
import '../intro/intro_page.dart' as _i4;
import '../onboarding/onboarding_page.dart' as _i6;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    PhoneAuthPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.PhoneAuthPage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.IntroPage());
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>(
          orElse: () => const SignUpPageRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SignUpPage(key: args.key));
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.OnBoardingPage());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i7.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i7.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i7.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i7.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i7.RouteConfig(OnBoardingPageRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i7.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.PhoneAuthPage]
class PhoneAuthPageRoute extends _i7.PageRouteInfo<void> {
  const PhoneAuthPageRoute()
      : super(PhoneAuthPageRoute.name, path: '/phone-auth-page');

  static const String name = 'PhoneAuthPageRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i7.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i8.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.IntroPage]
class IntroPageRoute extends _i7.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpPageRoute extends _i7.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i8.Key? key})
      : super(SignUpPageRoute.name,
            path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'SignUpPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.OnBoardingPage]
class OnBoardingPageRoute extends _i7.PageRouteInfo<void> {
  const OnBoardingPageRoute() : super(OnBoardingPageRoute.name, path: '/');

  static const String name = 'OnBoardingPageRoute';
}
