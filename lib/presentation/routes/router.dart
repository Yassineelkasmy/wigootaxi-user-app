import 'package:auto_route/auto_route.dart';
import 'package:taxidriver/booking/ui/booking_page.dart';
import 'package:taxidriver/booking/ui/bookings_page.dart';
import 'package:taxidriver/presentation/auth/login_page.dart';
import 'package:taxidriver/presentation/auth/phone_auth_page.dart';
import 'package:taxidriver/presentation/auth/phone_verification_page.dart';
import 'package:taxidriver/presentation/auth/signup_page.dart';
import 'package:taxidriver/presentation/home/help/message_sent_page.dart';
import 'package:taxidriver/presentation/home/help/send_message_page.dart';
import 'package:taxidriver/presentation/home/home_page.dart';
import 'package:taxidriver/presentation/home/pick_location/activate_location_or_map_page.dart';
import 'package:taxidriver/presentation/home/pick_location/pick_up_root_page.dart';
import 'package:taxidriver/presentation/home/reservation_page.dart';
import 'package:taxidriver/presentation/intro/intro_page.dart';
import 'package:taxidriver/presentation/onboarding/onboarding_page.dart';
import 'package:taxidriver/presentation/splash/splash_page.dart';
import 'package:taxidriver/ride/ui/activate_location_or_ride_map_page.dart';
import 'package:taxidriver/ride/ui/ride_root_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: PhoneVerificationPage),
  AutoRoute(page: PhoneAuthPage),
  AutoRoute(page: LoginPage),
  AutoRoute(page: IntroPage),
  AutoRoute(page: SignUpPage),
  AutoRoute(page: HomePage),
  AutoRoute(page: ActivateLocationOrMapPage),
  AutoRoute(page: ActivateLocationOrRideMapPage),
  AutoRoute(page: PickUpRootPage),
  AutoRoute(page: BookingPage),
  AutoRoute(page: ReservationPage),
  AutoRoute(page: BookingsPage),
  AutoRoute(page: RideRootPage),
  AutoRoute(page: OnBoardingPage),
  AutoRoute(page: SendMessagePage),
  AutoRoute(page: MessageSentPage),
])
class $AppRouter {}
