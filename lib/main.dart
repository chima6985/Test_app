import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_application/screens/home_page.dart';
// import 'package:test_application/screens/landing_page.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:test_application/screens/onboard_screen.dart';
// import 'package:test_application/screens/onboard_screen2.dart';
// import 'package:test_application/screens/signup_screen.dart';
// import 'package:test_application/screens/signin_screen.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final _controller = PageController();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}
