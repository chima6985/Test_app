import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  OnboardScreen({super.key});
  final Color onboardScreenColor = Color(0XFF9DC08B);
  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
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
            margin: EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi Chima ! Welcome \n to Harmony Hush',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                Container(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 70),
                    height: 60,
                    width: 310,
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
                      onPressed: () {},
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Color(0XFF3C6255)),
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
