import 'package:flutter/material.dart';
import 'package:test_application/screens/landing_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_application/screens/onboard_screen.dart';
import 'package:test_application/screens/onboard_screen2.dart';
import 'package:test_application/screens/signup_screen.dart';
import 'package:test_application/screens/signin_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _controller = PageController();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFE0EECD)),
      home: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                LandingPage(),
                OnboardScreen(),
                OnboardScreen2(),
                // SignupScreen(),
                SigninScreen(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.green.shade600,
              dotColor: Colors.green.shade200,
              spacing: 20,
            ),
          ),
        ],
      ),
    );
  }
}
