import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:in_app_notification/in_app_notification.dart';
import 'package:taxidriver/firebase_options.dart';
import 'package:taxidriver/presentation/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    ProviderScope(
      child: InAppNotification(child: AppWidget()),
    ),
  );
  FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  final user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    await firebaseMessaging.subscribeToTopic(user.uid);
    firebaseMessaging.requestPermission(alert: true, badge: true, sound: true);
  }
}
