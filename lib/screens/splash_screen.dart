import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:test_application/screens/home_page.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: 
    Column(
      children: [
        Center(
          child: LottieBuilder.asset(''),
        ),
      ],
    ), nextScreen: MyHomePage(),
    backgroundColor: Color(0XFFECF4E2),);
  }
}