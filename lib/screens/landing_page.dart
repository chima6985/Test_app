import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  
  LandingPage({super.key});
  // Color backGroungColor = Color(0xFFE0EECD);

  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: backGroungColor,
      body: Center(
        child: ClipRRect(
          child: Container(
            height: mqr.height,
            width: mqr.width,
            child: Image.asset('assets/logo.png'),
          ),
        ),
      ),
    );
  }
}
