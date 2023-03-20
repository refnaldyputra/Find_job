import 'package:find_job/ui/screens/onboarding.dart';
import 'package:find_job/ui/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
      },
    );
  }
}
