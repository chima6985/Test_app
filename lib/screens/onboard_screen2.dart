import 'package:flutter/material.dart';
class OnboardScreen2 extends StatelessWidget {
   OnboardScreen2 ({super.key});
  
@override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
   return Scaffold(
    body: Container(  width: mqr.width,
            height: mqr.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/onboard2.png'),
                fit: BoxFit.cover,
              ),
            ),)
          
   );
  }
}