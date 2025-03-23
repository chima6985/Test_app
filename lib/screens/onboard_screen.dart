import 'package:flutter/material.dart';
import 'package:test_application/screens/signup_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});
  final Color onboardScreenColor = Color(0XFF9DC08B);
  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return Scaffold(
      body: ClipRRect(
        child: Container(
          width: mqr.width,
          height: mqr.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/onboardd.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Hi Chima ! Wellcome \n to Harmony Hush',
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      '🧘‍♂️ Explore Inner Peace, One Meditation at a Time 🧘‍♀️ ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                Container(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 80),
                    height: 60,
                    width: 330,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0XFFEDF1D6),
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF3C6255),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
