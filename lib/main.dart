import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        fallbackLocale: Locale('fr'),
        child: AppWidget(),
        supportedLocales: [
          Locale('fr'),
          Locale('ar'),
        ],
        path: 'assets/translations',
      ),
    ),
  );
}
