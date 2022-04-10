import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:taxidriver/presentation/core/app_widget.dart';

Future<void> main() async {
  await EasyLocalization.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      child: EasyLocalization(
        child: AppWidget(),
        supportedLocales: [
          Locale('fr', 'FR'),
          Locale('ar', 'MA'),
        ],
        path: 'assets/translations',
      ),
    ),
  );
}
