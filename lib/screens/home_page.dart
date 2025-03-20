import 'package:flutter/material.dart';
import 'landing_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_application/screens/onboard_screen.dart';
import 'package:test_application/screens/onboard_screen2.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return  MaterialApp(
     home:
      Scaffold(
        backgroundColor: Color(0XFFECF4E2),
        body:Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  LandingPage(),
                  OnboardScreen(),
                  OnboardScreen2(),
                  // SignupScreen(),
                  // SigninScreen(),
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
      ),
    );
  }
}