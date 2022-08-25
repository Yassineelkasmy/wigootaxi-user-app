// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i24;
import 'package:flutter/material.dart' as _i25;

import '../../booking/domain/ride_booking.dart' as _i27;
import '../../booking/ui/booking_page.dart' as _i13;
import '../../booking/ui/bookings_page.dart' as _i15;
import '../../driver/domain/driver_record.dart' as _i26;
import '../../ride/domain/ride.dart' as _i28;
import '../../ride/ui/activate_location_or_ride_map_page.dart' as _i9;
import '../../ride/ui/my_drivers_page.dart' as _i23;
import '../../ride/ui/my_locations_page.dart' as _i20;
import '../../ride/ui/my_ride_page.dart' as _i22;
import '../../ride/ui/my_rides_page.dart' as _i21;
import '../../ride/ui/ride_cancelled_page.dart' as _i10;
import '../../ride/ui/ride_finished_page.dart' as _i11;
import '../../ride/ui/ride_root_page.dart' as _i16;
import '../auth/login_page.dart' as _i4;
import '../auth/phone_auth_page.dart' as _i3;
import '../auth/phone_verification_page.dart' as _i2;
import '../auth/signup_page.dart' as _i6;
import '../home/help/message_sent_page.dart' as _i19;
import '../home/help/send_message_page.dart' as _i18;
import '../home/home_page.dart' as _i7;
import '../home/pick_location/activate_location_or_map_page.dart' as _i8;
import '../home/pick_location/pick_up_root_page.dart' as _i12;
import '../home/reservation_page.dart' as _i14;
import '../intro/intro_page.dart' as _i5;
import '../onboarding/onboarding_page.dart' as _i17;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i24.RootStackRouter {
  AppRouter([_i25.GlobalKey<_i25.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i24.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    PhoneVerificationPageRoute.name: (routeData) {
      final args = routeData.argsAs<PhoneVerificationPageRouteArgs>();
      return _i24.MaterialPageX<dynamic>(
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
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.PhoneAuthPage(key: args.key));
    },
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LoginPage(key: args.key));
    },
    IntroPageRoute.name: (routeData) {
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.IntroPage());
    },
    SignUpPageRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpPageRouteArgs>(
          orElse: () => const SignUpPageRouteArgs());
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.SignUpPage(key: args.key));
    },
    HomePageRoute.name: (routeData) {
      final args = routeData.argsAs<HomePageRouteArgs>(
          orElse: () => const HomePageRouteArgs());
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.HomePage(key: args.key));
    },
    ActivateLocationOrMapPageRoute.name: (routeData) {
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ActivateLocationOrMapPage());
    },
    ActivateLocationOrRideMapPageRoute.name: (routeData) {
      final args = routeData.argsAs<ActivateLocationOrRideMapPageRouteArgs>();
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i9.ActivateLocationOrRideMapPage(
              key: args.key, driverRecord: args.driverRecord));
    },
    RideCancelledPageRoute.name: (routeData) {
      final args = routeData.argsAs<RideCancelledPageRouteArgs>();
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.RideCancelledPage(key: args.key, message: args.message));
    },
    RideFinishedPageRoute.name: (routeData) {
      final args = routeData.argsAs<RideFinishedPageRouteArgs>();
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.RideFinishedPage(
              key: args.key,
              startname: args.startname,
              destname: args.destname,
              totalDistance: args.totalDistance,
              totalPrice: args.totalPrice));
    },
    PickUpRootPageRoute.name: (routeData) {
      final args = routeData.argsAs<PickUpRootPageRouteArgs>(
          orElse: () => const PickUpRootPageRouteArgs());
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.PickUpRootPage(key: args.key));
    },
    BookingPageRoute.name: (routeData) {
      final args = routeData.argsAs<BookingPageRouteArgs>();
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i13.BookingPage(
              key: args.key,
              ride: args.ride,
              driverId: args.driverId,
              cnadidatesUids: args.cnadidatesUids));
    },
    ReservationPageRoute.name: (routeData) {
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.ReservationPage());
    },
    BookingsPageRoute.name: (routeData) {
      final args = routeData.argsAs<BookingsPageRouteArgs>(
          orElse: () => const BookingsPageRouteArgs());
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i15.BookingsPage(key: args.key, fromBooking: args.fromBooking));
    },
    RideRootPageRoute.name: (routeData) {
      final args = routeData.argsAs<RideRootPageRouteArgs>();
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i16.RideRootPage(
              key: args.key, driverRecord: args.driverRecord));
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: _i17.OnBoardingPage());
    },
    SendMessagePageRoute.name: (routeData) {
      final args = routeData.argsAs<SendMessagePageRouteArgs>(
          orElse: () => const SendMessagePageRouteArgs());
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: _i18.SendMessagePage(key: args.key));
    },
    MessageSentPageRoute.name: (routeData) {
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.MessageSentPage());
    },
    MyLocationsPageRoute.name: (routeData) {
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.MyLocationsPage());
    },
    MyRidesPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyRidesPageRouteArgs>(
          orElse: () => const MyRidesPageRouteArgs());
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: _i21.MyRidesPage(key: args.key));
    },
    MyRidePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyRidePageRouteArgs>();
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i22.MyRidePage(key: args.key, ride: args.ride));
    },
    MyDriversPageRoute.name: (routeData) {
      final args = routeData.argsAs<MyDriversPageRouteArgs>(
          orElse: () => const MyDriversPageRouteArgs());
      return _i24.MaterialPageX<dynamic>(
          routeData: routeData, child: _i23.MyDriversPage(key: args.key));
    }
  };

  @override
  List<_i24.RouteConfig> get routes => [
        _i24.RouteConfig(SplashPageRoute.name, path: '/'),
        _i24.RouteConfig(PhoneVerificationPageRoute.name,
            path: '/phone-verification-page'),
        _i24.RouteConfig(PhoneAuthPageRoute.name, path: '/phone-auth-page'),
        _i24.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i24.RouteConfig(IntroPageRoute.name, path: '/intro-page'),
        _i24.RouteConfig(SignUpPageRoute.name, path: '/sign-up-page'),
        _i24.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i24.RouteConfig(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page'),
        _i24.RouteConfig(ActivateLocationOrRideMapPageRoute.name,
            path: '/activate-location-or-ride-map-page'),
        _i24.RouteConfig(RideCancelledPageRoute.name,
            path: '/ride-cancelled-page'),
        _i24.RouteConfig(RideFinishedPageRoute.name,
            path: '/ride-finished-page'),
        _i24.RouteConfig(PickUpRootPageRoute.name, path: '/pick-up-root-page'),
        _i24.RouteConfig(BookingPageRoute.name, path: '/booking-page'),
        _i24.RouteConfig(ReservationPageRoute.name, path: '/reservation-page'),
        _i24.RouteConfig(BookingsPageRoute.name, path: '/bookings-page'),
        _i24.RouteConfig(RideRootPageRoute.name, path: '/ride-root-page'),
        _i24.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i24.RouteConfig(SendMessagePageRoute.name, path: '/send-message-page'),
        _i24.RouteConfig(MessageSentPageRoute.name, path: '/message-sent-page'),
        _i24.RouteConfig(MyLocationsPageRoute.name, path: '/my-locations-page'),
        _i24.RouteConfig(MyRidesPageRoute.name, path: '/my-rides-page'),
        _i24.RouteConfig(MyRidePageRoute.name, path: '/my-ride-page'),
        _i24.RouteConfig(MyDriversPageRoute.name, path: '/my-drivers-page'),
        _i24.RouteConfig(MessageSentPageRoute.name, path: '/message-sent-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i24.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.PhoneVerificationPage]
class PhoneVerificationPageRoute
    extends _i24.PageRouteInfo<PhoneVerificationPageRouteArgs> {
  PhoneVerificationPageRoute(
      {_i25.Key? key,
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

  final _i25.Key? key;

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
class PhoneAuthPageRoute extends _i24.PageRouteInfo<PhoneAuthPageRouteArgs> {
  PhoneAuthPageRoute({_i25.Key? key})
      : super(PhoneAuthPageRoute.name,
            path: '/phone-auth-page', args: PhoneAuthPageRouteArgs(key: key));

  static const String name = 'PhoneAuthPageRoute';
}

class PhoneAuthPageRouteArgs {
  const PhoneAuthPageRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'PhoneAuthPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.LoginPage]
class LoginPageRoute extends _i24.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({_i25.Key? key})
      : super(LoginPageRoute.name,
            path: '/login-page', args: LoginPageRouteArgs(key: key));

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.IntroPage]
class IntroPageRoute extends _i24.PageRouteInfo<void> {
  const IntroPageRoute() : super(IntroPageRoute.name, path: '/intro-page');

  static const String name = 'IntroPageRoute';
}

/// generated route for
/// [_i6.SignUpPage]
class SignUpPageRoute extends _i24.PageRouteInfo<SignUpPageRouteArgs> {
  SignUpPageRoute({_i25.Key? key})
      : super(SignUpPageRoute.name,
            path: '/sign-up-page', args: SignUpPageRouteArgs(key: key));

  static const String name = 'SignUpPageRoute';
}

class SignUpPageRouteArgs {
  const SignUpPageRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'SignUpPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i24.PageRouteInfo<HomePageRouteArgs> {
  HomePageRoute({_i25.Key? key})
      : super(HomePageRoute.name,
            path: '/home-page', args: HomePageRouteArgs(key: key));

  static const String name = 'HomePageRoute';
}

class HomePageRouteArgs {
  const HomePageRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'HomePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.ActivateLocationOrMapPage]
class ActivateLocationOrMapPageRoute extends _i24.PageRouteInfo<void> {
  const ActivateLocationOrMapPageRoute()
      : super(ActivateLocationOrMapPageRoute.name,
            path: '/activate-location-or-map-page');

  static const String name = 'ActivateLocationOrMapPageRoute';
}

/// generated route for
/// [_i9.ActivateLocationOrRideMapPage]
class ActivateLocationOrRideMapPageRoute
    extends _i24.PageRouteInfo<ActivateLocationOrRideMapPageRouteArgs> {
  ActivateLocationOrRideMapPageRoute(
      {_i25.Key? key, required _i26.DriverRecord driverRecord})
      : super(ActivateLocationOrRideMapPageRoute.name,
            path: '/activate-location-or-ride-map-page',
            args: ActivateLocationOrRideMapPageRouteArgs(
                key: key, driverRecord: driverRecord));

  static const String name = 'ActivateLocationOrRideMapPageRoute';
}

class ActivateLocationOrRideMapPageRouteArgs {
  const ActivateLocationOrRideMapPageRouteArgs(
      {this.key, required this.driverRecord});

  final _i25.Key? key;

  final _i26.DriverRecord driverRecord;

  @override
  String toString() {
    return 'ActivateLocationOrRideMapPageRouteArgs{key: $key, driverRecord: $driverRecord}';
  }
}

/// generated route for
/// [_i10.RideCancelledPage]
class RideCancelledPageRoute
    extends _i24.PageRouteInfo<RideCancelledPageRouteArgs> {
  RideCancelledPageRoute({_i25.Key? key, required String message})
      : super(RideCancelledPageRoute.name,
            path: '/ride-cancelled-page',
            args: RideCancelledPageRouteArgs(key: key, message: message));

  static const String name = 'RideCancelledPageRoute';
}

class RideCancelledPageRouteArgs {
  const RideCancelledPageRouteArgs({this.key, required this.message});

  final _i25.Key? key;

  final String message;

  @override
  String toString() {
    return 'RideCancelledPageRouteArgs{key: $key, message: $message}';
  }
}

/// generated route for
/// [_i11.RideFinishedPage]
class RideFinishedPageRoute
    extends _i24.PageRouteInfo<RideFinishedPageRouteArgs> {
  RideFinishedPageRoute(
      {_i25.Key? key,
      required String startname,
      required String destname,
      required int totalDistance,
      required double totalPrice})
      : super(RideFinishedPageRoute.name,
            path: '/ride-finished-page',
            args: RideFinishedPageRouteArgs(
                key: key,
                startname: startname,
                destname: destname,
                totalDistance: totalDistance,
                totalPrice: totalPrice));

  static const String name = 'RideFinishedPageRoute';
}

class RideFinishedPageRouteArgs {
  const RideFinishedPageRouteArgs(
      {this.key,
      required this.startname,
      required this.destname,
      required this.totalDistance,
      required this.totalPrice});

  final _i25.Key? key;

  final String startname;

  final String destname;

  final int totalDistance;

  final double totalPrice;

  @override
  String toString() {
    return 'RideFinishedPageRouteArgs{key: $key, startname: $startname, destname: $destname, totalDistance: $totalDistance, totalPrice: $totalPrice}';
  }
}

/// generated route for
/// [_i12.PickUpRootPage]
class PickUpRootPageRoute extends _i24.PageRouteInfo<PickUpRootPageRouteArgs> {
  PickUpRootPageRoute({_i25.Key? key})
      : super(PickUpRootPageRoute.name,
            path: '/pick-up-root-page',
            args: PickUpRootPageRouteArgs(key: key));

  static const String name = 'PickUpRootPageRoute';
}

class PickUpRootPageRouteArgs {
  const PickUpRootPageRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'PickUpRootPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.BookingPage]
class BookingPageRoute extends _i24.PageRouteInfo<BookingPageRouteArgs> {
  BookingPageRoute(
      {_i25.Key? key,
      required _i27.RideBooking ride,
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

  final _i25.Key? key;

  final _i27.RideBooking ride;

  final String driverId;

  final List<String> cnadidatesUids;

  @override
  String toString() {
    return 'BookingPageRouteArgs{key: $key, ride: $ride, driverId: $driverId, cnadidatesUids: $cnadidatesUids}';
  }
}

/// generated route for
/// [_i14.ReservationPage]
class ReservationPageRoute extends _i24.PageRouteInfo<void> {
  const ReservationPageRoute()
      : super(ReservationPageRoute.name, path: '/reservation-page');

  static const String name = 'ReservationPageRoute';
}

/// generated route for
/// [_i15.BookingsPage]
class BookingsPageRoute extends _i24.PageRouteInfo<BookingsPageRouteArgs> {
  BookingsPageRoute({_i25.Key? key, bool fromBooking = false})
      : super(BookingsPageRoute.name,
            path: '/bookings-page',
            args: BookingsPageRouteArgs(key: key, fromBooking: fromBooking));

  static const String name = 'BookingsPageRoute';
}

class BookingsPageRouteArgs {
  const BookingsPageRouteArgs({this.key, this.fromBooking = false});

  final _i25.Key? key;

  final bool fromBooking;

  @override
  String toString() {
    return 'BookingsPageRouteArgs{key: $key, fromBooking: $fromBooking}';
  }
}

/// generated route for
/// [_i16.RideRootPage]
class RideRootPageRoute extends _i24.PageRouteInfo<RideRootPageRouteArgs> {
  RideRootPageRoute({_i25.Key? key, required _i26.DriverRecord driverRecord})
      : super(RideRootPageRoute.name,
            path: '/ride-root-page',
            args: RideRootPageRouteArgs(key: key, driverRecord: driverRecord));

  static const String name = 'RideRootPageRoute';
}

class RideRootPageRouteArgs {
  const RideRootPageRouteArgs({this.key, required this.driverRecord});

  final _i25.Key? key;

  final _i26.DriverRecord driverRecord;

  @override
  String toString() {
    return 'RideRootPageRouteArgs{key: $key, driverRecord: $driverRecord}';
  }
}

/// generated route for
/// [_i17.OnBoardingPage]
class OnBoardingPageRoute extends _i24.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i18.SendMessagePage]
class SendMessagePageRoute
    extends _i24.PageRouteInfo<SendMessagePageRouteArgs> {
  SendMessagePageRoute({_i25.Key? key})
      : super(SendMessagePageRoute.name,
            path: '/send-message-page',
            args: SendMessagePageRouteArgs(key: key));

  static const String name = 'SendMessagePageRoute';
}

class SendMessagePageRouteArgs {
  const SendMessagePageRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'SendMessagePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i19.MessageSentPage]
class MessageSentPageRoute extends _i24.PageRouteInfo<void> {
  const MessageSentPageRoute()
      : super(MessageSentPageRoute.name, path: '/message-sent-page');

  static const String name = 'MessageSentPageRoute';
}

/// generated route for
/// [_i20.MyLocationsPage]
class MyLocationsPageRoute extends _i24.PageRouteInfo<void> {
  const MyLocationsPageRoute()
      : super(MyLocationsPageRoute.name, path: '/my-locations-page');

  static const String name = 'MyLocationsPageRoute';
}

/// generated route for
/// [_i21.MyRidesPage]
class MyRidesPageRoute extends _i24.PageRouteInfo<MyRidesPageRouteArgs> {
  MyRidesPageRoute({_i25.Key? key})
      : super(MyRidesPageRoute.name,
            path: '/my-rides-page', args: MyRidesPageRouteArgs(key: key));

  static const String name = 'MyRidesPageRoute';
}

class MyRidesPageRouteArgs {
  const MyRidesPageRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'MyRidesPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i22.MyRidePage]
class MyRidePageRoute extends _i24.PageRouteInfo<MyRidePageRouteArgs> {
  MyRidePageRoute({_i25.Key? key, required _i28.Ride ride})
      : super(MyRidePageRoute.name,
            path: '/my-ride-page',
            args: MyRidePageRouteArgs(key: key, ride: ride));

  static const String name = 'MyRidePageRoute';
}

class MyRidePageRouteArgs {
  const MyRidePageRouteArgs({this.key, required this.ride});

  final _i25.Key? key;

  final _i28.Ride ride;

  @override
  String toString() {
    return 'MyRidePageRouteArgs{key: $key, ride: $ride}';
  }
}

/// generated route for
/// [_i23.MyDriversPage]
class MyDriversPageRoute extends _i24.PageRouteInfo<MyDriversPageRouteArgs> {
  MyDriversPageRoute({_i25.Key? key})
      : super(MyDriversPageRoute.name,
            path: '/my-drivers-page', args: MyDriversPageRouteArgs(key: key));

  static const String name = 'MyDriversPageRoute';
}

class MyDriversPageRouteArgs {
  const MyDriversPageRouteArgs({this.key});

  final _i25.Key? key;

  @override
  String toString() {
    return 'MyDriversPageRouteArgs{key: $key}';
  }
}
