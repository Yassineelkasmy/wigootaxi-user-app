// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../../booking/domain/ride_booking.dart' as _i21;
import '../../booking/ui/booking_page.dart' as _i11;
import '../../booking/ui/bookings_page.dart' as _i13;
import '../../driver/domain/driver_record.dart' as _i20;
import '../../ride/ui/activate_location_or_ride_map_page.dart' as _i9;
import '../../ride/ui/ride_root_page.dart' as _i14;
import '../auth/login_page.dart' as _i4;
import '../auth/phone_auth_page.dart' as _i3;
import '../auth/phone_verification_page.dart' as _i2;
import '../auth/signup_page.dart' as _i6;
import '../home/help/message_sent_page.dart' as _i17;
import '../home/help/send_message_page.dart' as _i16;
import '../home/home_page.dart' as _i7;
import '../home/pick_location/activate_location_or_map_page.dart' as _i8;
import '../home/pick_location/pick_up_root_page.dart' as _i10;
import '../home/reservation_page.dart' as _i12;
import '../intro/intro_page.dart' as _i5;
import '../onboarding/onboarding_page.dart' as _i15;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    PhoneVerificationPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerificationPageRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
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
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.PhoneAuthPage(key: args.key));
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LoginPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.IntroPage());
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>(
          orElse: () => const SignUpPageRouteArgs());
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.SignUpPage(key: args.key));
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.HomePage(key: args.key));
    },
    ActivateLocationOrMapPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ActivateLocationOrMapPage());
    },
    ActivateLocationOrRideMapPageRoute.name: (routeData) {
      final args = routeData.argsAs<ActivateLocationOrRideMapPageRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.ActivateLocationOrRideMapPage(
              key: args.key, driverRecord: args.driverRecord));
    },
    PickUpRootPageRoute.name: (routeData) {
      final args = routeData.argsAs<PickUpRootPageRouteArgs>(
          orElse: () => const PickUpRootPageRouteArgs());
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.PickUpRootPage(key: args.key));
    },
    BookingPageRoute.name: (routeData) {
      final args = routeData.argsAs<BookingPageRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.BookingPage(
              key: args.key,
              ride: args.ride,
              driverId: args.driverId,
              cnadidatesUids: args.cnadidatesUids));
    },
    ReservationPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ReservationPage());
    },
    BookingsPageRoute.name: (routeData) {
      final args = routeData.argsAs<BookingsPageRouteArgs>(
          orElse: () => const BookingsPageRouteArgs());
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i13.BookingsPage(key: args.key, fromBooking: args.fromBooking));
    },
    RideRootPageRoute.name: (routeData) {
      final args = routeData.argsAs<RideRootPageRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i14.RideRootPage(
              key: args.key, driverRecord: args.driverRecord));
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i15.OnBoardingPage());
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: _i16.SendMessagePage(key: args.key));
    },
    MessageSentPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.MessageSentPage());
    }
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(SplashPageRoute.name, path: '/'),
        _i18.RouteConfig(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page'),
        _i18.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i18.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i18.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i18.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i18.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i18.RouteConfig(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page'),
        _i18.RouteConfig(ActivateLocationOrRideMapPageRoute.name,
            path: '/activate-location-or-ride-map-page'),
        _i18.RouteConfig(PickUpRootPageRoute.name, path: '/pick-up-root-page'),
        _i18.RouteConfig(BookingPageRoute.name, path: '/booking-page'),
        _i18.RouteConfig(ReservationPageRoute.name, path: '/reservation-page'),
        _i18.RouteConfig(BookingsPageRoute.name, path: '/bookings-page'),
        _i18.RouteConfig(RideRootPageRoute.name, path: '/ride-root-page'),
        _i18.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i18.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page'),
        _i18.RouteConfig(MessageSentPageRoute.name, path: '/message-sent-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i18.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.PhoneVerificationPage]
class PhoneVerificationPageRoute
    extends _i18.PageRouteInfo<PhoneVerificationPageRouteArgs> {
  PhoneVerificationPageRoute(
      {_i19.Key? key,
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

  final _i19.Key? key;

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
class PhoneAuthPageRoute extends _i18.PageRouteInfo<PhoneAuthPageRouteArgs> {
  PhoneAuthPageRoute({_i19.Key? key})
      : super(PhoneAuthPageRoute.name,
            path: '/phone-auth-page', args: PhoneAuthPageRouteArgs(key: key));

  static const String name = 'PhoneAuthPageRoute';
}

class PhoneAuthPageRouteArgs {
  const PhoneAuthPageRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'PhoneAuthPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.LoginPage]
class LoginPageRoute extends _i18.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i19.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.IntroPage]
class IntroPageRoute extends _i18.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpPageRoute extends _i18.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i19.Key? key})
      : super(SignUpPageRoute.name,
            path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'SignUpPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i18.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i19.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.ActivateLocationOrMapPage]
class ActivateLocationOrMapPageRoute extends _i18.PageRouteInfo<void> {
  const ActivateLocationOrMapPageRoute()
      : super(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page');

  static const String name = 'ActivateLocationOrMapPageRoute';
}

/// generated route for
/// [_i9.ActivateLocationOrRideMapPage]
class ActivateLocationOrRideMapPageRoute
    extends _i18.PageRouteInfo<ActivateLocationOrRideMapPageRouteArgs> {
  ActivateLocationOrRideMapPageRoute(
      {_i19.Key? key, required _i20.DriverRecord driverRecord})
      : super(ActivateLocationOrRideMapPageRoute.name,
            path: '/activate-location-or-ride-map-page',
            args: ActivateLocationOrRideMapPageRouteArgs(
                key: key, driverRecord: driverRecord));

  static const String name = 'ActivateLocationOrRideMapPageRoute';
}

class ActivateLocationOrRideMapPageRouteArgs {
  const ActivateLocationOrRideMapPageRouteArgs(
      {this.key, required this.driverRecord});

  final _i19.Key? key;

  final _i20.DriverRecord driverRecord;

  @override
  String toString() {
    return 'ActivateLocationOrRideMapPageRouteArgs{key: $key, driverRecord: $driverRecord}';
  }
}

/// generated route for
/// [_i10.PickUpRootPage]
class PickUpRootPageRoute extends _i18.PageRouteInfo<PickUpRootPageRouteArgs> {
  PickUpRootPageRoute({_i19.Key? key})
      : super(PickUpRootPageRoute.name,
            path: '/pick-up-root-page',
            args: PickUpRootPageRouteArgs(key: key));

  static const String name = 'PickUpRootPageRoute';
}

class PickUpRootPageRouteArgs {
  const PickUpRootPageRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'PickUpRootPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.BookingPage]
class BookingPageRoute extends _i18.PageRouteInfo<BookingPageRouteArgs> {
  BookingPageRoute(
      {_i19.Key? key,
      required _i21.RideBooking ride,
      required String driverId,
      required List<String> cnadidatesUids})
      : super(BookingPageRoute.name,
            path: '/booking-page',
            args: BookingPageRouteArgs(
                key: key,
                ride: ride,
                driverId: driverId,
                cnadidatesUids: cnadidatesUids));

  static const String name = 'BookingPageRoute';
}

class BookingPageRouteArgs {
  const BookingPageRouteArgs(
      {this.key,
      required this.ride,
      required this.driverId,
      required this.cnadidatesUids});

  final _i19.Key? key;

  final _i21.RideBooking ride;

  final String driverId;

  final List<String> cnadidatesUids;

  @override
  String toString() {
    return 'BookingPageRouteArgs{key: $key, ride: $ride, driverId: $driverId, cnadidatesUids: $cnadidatesUids}';
  }
}

/// generated route for
/// [_i12.ReservationPage]
class ReservationPageRoute extends _i18.PageRouteInfo<void> {
  const ReservationPageRoute()
      : super(ReservationPageRoute.name, path: '/reservation-page');

  static const String name = 'ReservationPageRoute';
}

/// generated route for
/// [_i13.BookingsPage]
class BookingsPageRoute extends _i18.PageRouteInfo<BookingsPageRouteArgs> {
  BookingsPageRoute({_i19.Key? key, bool fromBooking = false})
      : super(BookingsPageRoute.name,
            path: '/bookings-page',
            args: BookingsPageRouteArgs(key: key, fromBooking: fromBooking));

  static const String name = 'BookingsPageRoute';
}

class BookingsPageRouteArgs {
  const BookingsPageRouteArgs({this.key, this.fromBooking = false});

  final _i19.Key? key;

  final bool fromBooking;

  @override
  String toString() {
    return 'BookingsPageRouteArgs{key: $key, fromBooking: $fromBooking}';
  }
}

/// generated route for
/// [_i14.RideRootPage]
class RideRootPageRoute extends _i18.PageRouteInfo<RideRootPageRouteArgs> {
  RideRootPageRoute({_i19.Key? key, required _i20.DriverRecord driverRecord})
      : super(RideRootPageRoute.name,
            path: '/ride-root-page',
            args: RideRootPageRouteArgs(key: key, driverRecord: driverRecord));

  static const String name = 'RideRootPageRoute';
}

class RideRootPageRouteArgs {
  const RideRootPageRouteArgs({this.key, required this.driverRecord});

  final _i19.Key? key;

  final _i20.DriverRecord driverRecord;

  @override
  String toString() {
    return 'RideRootPageRouteArgs{key: $key, driverRecord: $driverRecord}';
  }
}

/// generated route for
/// [_i15.OnBoardingPage]
class OnBoardingPageRoute extends _i18.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i16.SendMessagePage]
class SendMessagePageRoute
    extends _i18.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i19.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i17.MessageSentPage]
class MessageSentPageRoute extends _i18.PageRouteInfo<void> {
  const MessageSentPageRoute()
      : super(MessageSentPageRoute.name, path: '/message-sent-page');

  static const String name = 'MessageSentPageRoute';
}
