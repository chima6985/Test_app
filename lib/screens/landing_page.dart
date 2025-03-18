import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});
  // Color backGroungColor = Color(0xFFE0EECD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backGroungColor,
      body: Center(
        child: ClipRRect(
          child: Container(
            
            child: Image.asset('assets/logo.png'),
          ),
        ),
      ),
    );
  }
}
