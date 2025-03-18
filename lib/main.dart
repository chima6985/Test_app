import 'package:flutter/material.dart';
// import 'package:test_application/screens/landing_page.dart';
import 'package:test_application/screens/onboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFE0EECD)),
      home: OnboardScreen(),
    );
  }
}
