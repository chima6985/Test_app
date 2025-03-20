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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                        Positioned(
                          bottom: 10,
                          child: SmoothPageIndicator(
                            controller: _controller,
                            count: 3,
                            effect: JumpingDotEffect(
                              activeDotColor: Colors.green.shade600,
                              dotColor: Colors.green.shade200,
                              spacing: 20,
                            ),
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

// import 'package:flutter/material.dart';
// import 'landing_page.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:test_application/screens/onboard_screen.dart';
// import 'package:test_application/screens/onboard_screen2.dart';

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final _controller = PageController();
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color(0XFFECF4E2),
//         body: Column(
//           children: [
//             Expanded(
//               child: PageView.builder(
//                 controller: _controller,
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//                   return AnimatedBuilder(
//                     animation: _controller,
//                     builder: (context, child) {
//                       double pageOffset = 0;
//                       if (_controller.position.haveDimensions) {
//                         pageOffset = _controller.page! - index;
//                       }
//                       return Transform.translate(
//                         offset: Offset(pageOffset * 50, 0), // Sliding effect
//                         child: Opacity(
//                           opacity: (1 - pageOffset.abs()).clamp(
//                             0.0,
//                             1.0,
//                           ), // Fade effect
//                           child: child,
//                         ),
//                       );
//                     },
//                     child:
//                         [
//                           LandingPage(),
//                           OnboardScreen(),
//                           OnboardScreen2(),
//                         ][index],
//                   );
//                 },
//               ),
//             ),
//             Container(
//               alignment: Alignment(0, 0),
//               child: SmoothPageIndicator(
//                 controller: _controller,
//                 count: 3,
//                 effect: JumpingDotEffect(
//                   activeDotColor: Colors.green.shade600,
//                   dotColor: Colors.green.shade200,
//                   spacing: 20,
//                   dotHeight: 15,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
