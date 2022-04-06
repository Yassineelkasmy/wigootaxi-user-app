import 'package:auto_route/auto_route.dart';
import 'package:taxidriver/presentation/auth/login_page.dart';
import 'package:taxidriver/presentation/auth/phone_auth_page.dart';
import 'package:taxidriver/presentation/auth/signup_page.dart';
import 'package:taxidriver/presentation/home/home_page.dart';
import 'package:taxidriver/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: HomePage),
  AutoRoute(page: SplashPage),
  AutoRoute(page: PhoneAuthPage),
  AutoRoute(page: LoginPage),
  AutoRoute(page: SignUpPage, initial: true),
])
class $AppRouter {}
