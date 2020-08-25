import 'dart:async';

import 'package:fire_test/screen/first_screen.dart';
import 'package:fire_test/screen/second_screen.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

void main() {
  Crashlytics.instance.enableInDevMode = true;

  // Pass all uncaught errors to Crashlytics.
  FlutterError.onError = Crashlytics.instance.recordFlutterError;
  runZoned<Future<void>>(() async {
    runApp(
      MaterialApp(
        title: 'Dynamic Links',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomeScreen(),
          '/hidden': (BuildContext context) => HiddenScreen(),
        },
      ),
    );
  }, onError: Crashlytics.instance.recordError);
}
