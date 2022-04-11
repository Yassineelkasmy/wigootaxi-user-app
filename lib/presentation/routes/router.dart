import 'package:auto_route/auto_route.dart';
import 'package:taxidriver/presentation/auth/login_page.dart';
import 'package:taxidriver/presentation/auth/phone_auth_page.dart';
import 'package:taxidriver/presentation/auth/phone_verification_page.dart';
import 'package:taxidriver/presentation/auth/signup_page.dart';
import 'package:taxidriver/presentation/home/help/send_message_page.dart';
import 'package:taxidriver/presentation/home/home_page.dart';
import 'package:taxidriver/presentation/home/pick_location/activate_location_page.dart';
import 'package:taxidriver/presentation/intro/intro_page.dart';
import 'package:taxidriver/presentation/onboarding/onboarding_page.dart';
import 'package:taxidriver/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(page: PhoneVerificationPage),
  AutoRoute(page: PhoneAuthPage),
  AutoRoute(page: LoginPage),
  AutoRoute(page: IntroPage),
  AutoRoute(page: SignUpPage),
  AutoRoute(page: HomePage),
  AutoRoute(page: ActivateLocationPage),
  AutoRoute(page: OnBoardingPage),
  AutoRoute(page: SendMessagePage),
])
class $AppRouter {}
