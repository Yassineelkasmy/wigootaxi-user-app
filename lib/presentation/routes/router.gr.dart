// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/foundation.dart' as _i18;
import 'package:flutter/material.dart' as _i17;

import '../../booking/domain/ride.dart' as _i19;
import '../../booking/ui/booking_page.dart' as _i10;
import '../../booking/ui/bookings_page.dart' as _i12;
import '../auth/login_page.dart' as _i4;
import '../auth/phone_auth_page.dart' as _i3;
import '../auth/phone_verification_page.dart' as _i2;
import '../auth/signup_page.dart' as _i6;
import '../home/help/message_sent_page.dart' as _i15;
import '../home/help/send_message_page.dart' as _i14;
import '../home/home_page.dart' as _i7;
import '../home/pick_location/activate_location_or_map_page.dart' as _i8;
import '../home/pick_location/pick_up_root_page.dart' as _i9;
import '../home/reservation_page.dart' as _i11;
import '../intro/intro_page.dart' as _i5;
import '../onboarding/onboarding_page.dart' as _i13;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    PhoneVerificationPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerificationPageRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.PhoneVerificationPage(
              key: args.key,
              phoneNumber: args.phoneNumber,
              phone: args.phone,
              verificationId: args.verificationId));
    },
    PhoneAuthPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneAuthPageRouteArgs>(
          orElse: () => const PhoneAuthPageRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.PhoneAuthPage(key: args.key));
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LoginPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.IntroPage());
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>(
          orElse: () => const SignUpPageRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.SignUpPage(key: args.key));
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.HomePage(key: args.key));
    },
    ActivateLocationOrMapPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ActivateLocationOrMapPage());
    },
    PickUpRootPageRoute.name: (routeData) {
      final args = routeData.argsAs<PickUpRootPageRouteArgs>(
          orElse: () => const PickUpRootPageRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.PickUpRootPage(key: args.key));
    },
    BookingPageRoute.name: (routeData) {
      final args = routeData.argsAs<BookingPageRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.BookingPage(key: args.key, ride: args.ride));
    },
    ReservationPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.ReservationPage());
    },
    BookingsPageRoute.name: (routeData) {
      final args = routeData.argsAs<BookingsPageRouteArgs>(
          orElse: () => const BookingsPageRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i12.BookingsPage(key: args.key, fromBooking: args.fromBooking));
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i13.OnBoardingPage());
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: _i14.SendMessagePage(key: args.key));
    },
    MessageSentPageRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.MessageSentPage());
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(SplashPageRoute.name, path: '/'),
        _i16.RouteConfig(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page'),
        _i16.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i16.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i16.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i16.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i16.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i16.RouteConfig(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page'),
        _i16.RouteConfig(PickUpRootPageRoute.name, path: '/pick-up-root-page'),
        _i16.RouteConfig(BookingPageRoute.name, path: '/booking-page'),
        _i16.RouteConfig(ReservationPageRoute.name, path: '/reservation-page'),
        _i16.RouteConfig(BookingsPageRoute.name, path: '/bookings-page'),
        _i16.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i16.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page'),
        _i16.RouteConfig(MessageSentPageRoute.name, path: '/message-sent-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i16.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.PhoneVerificationPage]
class PhoneVerificationPageRoute
    extends _i16.PageRouteInfo<PhoneVerificationPageRouteArgs> {
  PhoneVerificationPageRoute(
      {_i18.Key? key,
      required String phoneNumber,
      required String phone,
      required String verificationId})
      : super(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page',
            args: PhoneVerificationPageRouteArgs(
                key: key,
                phoneNumber: phoneNumber,
                phone: phone,
                verificationId: verificationId));

  static const String name = 'PhoneVerificationPageRoute';
}

class PhoneVerificationPageRouteArgs {
  const PhoneVerificationPageRouteArgs(
      {this.key,
      required this.phoneNumber,
      required this.phone,
      required this.verificationId});

  final _i18.Key? key;

  final String phoneNumber;

  final String phone;

  final String verificationId;

  @override
  String toString() {
    return 'PhoneVerificationPageRouteArgs{key: $key, phoneNumber: $phoneNumber, phone: $phone, verificationId: $verificationId}';
  }
}

/// generated route for
/// [_i3.PhoneAuthPage]
class PhoneAuthPageRoute extends _i16.PageRouteInfo<PhoneAuthPageRouteArgs> {
  PhoneAuthPageRoute({_i18.Key? key})
      : super(PhoneAuthPageRoute.name,
            path: '/phone-auth-page', args: PhoneAuthPageRouteArgs(key: key));

  static const String name = 'PhoneAuthPageRoute';
}

class PhoneAuthPageRouteArgs {
  const PhoneAuthPageRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'PhoneAuthPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.LoginPage]
class LoginPageRoute extends _i16.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i18.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.IntroPage]
class IntroPageRoute extends _i16.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpPageRoute extends _i16.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i18.Key? key})
      : super(SignUpPageRoute.name,
            path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'SignUpPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i16.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i18.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.ActivateLocationOrMapPage]
class ActivateLocationOrMapPageRoute extends _i16.PageRouteInfo<void> {
  const ActivateLocationOrMapPageRoute()
      : super(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page');

  static const String name = 'ActivateLocationOrMapPageRoute';
}

/// generated route for
/// [_i9.PickUpRootPage]
class PickUpRootPageRoute extends _i16.PageRouteInfo<PickUpRootPageRouteArgs> {
  PickUpRootPageRoute({_i18.Key? key})
      : super(PickUpRootPageRoute.name,
            path: '/pick-up-root-page',
            args: PickUpRootPageRouteArgs(key: key));

  static const String name = 'PickUpRootPageRoute';
}

class PickUpRootPageRouteArgs {
  const PickUpRootPageRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'PickUpRootPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.BookingPage]
class BookingPageRoute extends _i16.PageRouteInfo<BookingPageRouteArgs> {
  BookingPageRoute({_i18.Key? key, required _i19.Ride ride})
      : super(BookingPageRoute.name,
            path: '/booking-page',
            args: BookingPageRouteArgs(key: key, ride: ride));

  static const String name = 'BookingPageRoute';
}

class BookingPageRouteArgs {
  const BookingPageRouteArgs({this.key, required this.ride});

  final _i18.Key? key;

  final _i19.Ride ride;

  @override
  String toString() {
    return 'BookingPageRouteArgs{key: $key, ride: $ride}';
  }
}

/// generated route for
/// [_i11.ReservationPage]
class ReservationPageRoute extends _i16.PageRouteInfo<void> {
  const ReservationPageRoute()
      : super(ReservationPageRoute.name, path: '/reservation-page');

  static const String name = 'ReservationPageRoute';
}

/// generated route for
/// [_i12.BookingsPage]
class BookingsPageRoute extends _i16.PageRouteInfo<BookingsPageRouteArgs> {
  BookingsPageRoute({_i18.Key? key, bool fromBooking = false})
      : super(BookingsPageRoute.name,
            path: '/bookings-page',
            args: BookingsPageRouteArgs(key: key, fromBooking: fromBooking));

  static const String name = 'BookingsPageRoute';
}

class BookingsPageRouteArgs {
  const BookingsPageRouteArgs({this.key, this.fromBooking = false});

  final _i18.Key? key;

  final bool fromBooking;

  @override
  String toString() {
    return 'BookingsPageRouteArgs{key: $key, fromBooking: $fromBooking}';
  }
}

/// generated route for
/// [_i13.OnBoardingPage]
class OnBoardingPageRoute extends _i16.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i14.SendMessagePage]
class SendMessagePageRoute
    extends _i16.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i18.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i18.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i15.MessageSentPage]
class MessageSentPageRoute extends _i16.PageRouteInfo<void> {
  const MessageSentPageRoute()
      : super(MessageSentPageRoute.name, path: '/message-sent-page');

  static const String name = 'MessageSentPageRoute';
}
