import 'package:flutter/material.dart';
import 'package:test_application/screens/signin_screen.dart';
import 'package:test_application/screens/signup_screen.dart';

class OnboardScreen2 extends StatelessWidget {
  OnboardScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: mqr.width,
        height: mqr.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/onboard2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'We are what we do',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50),
            Text(
              'Foster global peace and well-beign through \n accessible, guided meditation practices.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 120),
            Container(
              height: 55,
              width: 320,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0XFF609966)),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Already have an account ?  ",
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.baseline,
                      baseline: TextBaseline.alphabetic,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SigninScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                            color: Color(0XFF3E3E3EB5),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
