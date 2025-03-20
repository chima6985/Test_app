import 'package:flutter/material.dart';
import 'package:test_application/screens/signin_screen.dart';
import 'landing_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_application/screens/onboard_screen.dart';
import 'package:test_application/screens/onboard_screen2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    return Scaffold(
      body: Scaffold(
        backgroundColor: Color(0XFFECF4E2),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  PageView(
                    controller: _controller,
                    onPageChanged: (index) {
                      setState(() {
                        onLastPage = (index == 2);
                      });
                    },
                    children: [
                      LandingPage(),
                      OnboardScreen(),
                      OnboardScreen2(),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _controller.jumpToPage(2);
                          },
                          child: Text('SKip'),
                        ),
                        SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                          effect: JumpingDotEffect(
                            activeDotColor: Colors.green.shade600,
                            dotColor: Colors.green.shade200,
                            spacing: 20,
                          ),
                        ),
                        onLastPage
                            ? GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SigninScreen(),
                                  ),
                                );
                              },
                              child: Text('Done'),
                            )
                            : GestureDetector(
                              onTap: () {
                                _controller.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                );
                              },
                              child: Text('Next'),
                            ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

