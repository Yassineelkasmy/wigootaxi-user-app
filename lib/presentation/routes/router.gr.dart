// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../auth/login_page.dart' as _i4;
import '../auth/phone_auth_page.dart' as _i3;
import '../auth/signup_page.dart' as _i5;
import '../home/home_page.dart' as _i1;
import '../splash/splash_page.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashPage());
    },
    PhoneAuthPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.PhoneAuthPage());
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LoginPage(key: args.key));
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>(
          orElse: () => const SignUpPageRouteArgs());
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SignUpPage(key: args.key));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i6.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i6.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i6.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i6.RouteConfig(SignUpPageRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i3.PhoneAuthPage]
class PhoneAuthPageRoute extends _i6.PageRouteInfo<void> {
  const PhoneAuthPageRoute()
      : super(PhoneAuthPageRoute.name, path: '/phone-auth-page');

  static const String name = 'PhoneAuthPageRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginPageRoute extends _i6.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i7.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpPageRoute extends _i6.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i7.Key? key})
      : super(SignUpPageRoute.name,
            path: '/', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'SignUpPageRouteArgs{key: $key}';
  }
}
