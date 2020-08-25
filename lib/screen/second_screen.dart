import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';

class HiddenScreen extends StatefulWidget {
  @override
  _HiddenScreenState createState() => _HiddenScreenState();
}

class _HiddenScreenState extends State<HiddenScreen> {
  final FirebaseAnalytics analytics = FirebaseAnalytics();
  @override
  void initState() {
    super.initState();
    analyticsLog();
  }

  void analyticsLog() {
    analytics.setCurrentScreen(screenName: "/hidden");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Dynamic link Success'),
      ),
    );
  }
}
