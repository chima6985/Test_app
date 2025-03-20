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
                    children: [
                      LandingPage(),
                      OnboardScreen(),
                      OnboardScreen2(),
                    ],
                  ),
                  Positioned(
                    bottom: 10,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Colors.green.shade600,
                        dotColor: Colors.green.shade200,
                        spacing: 20,
                      ),
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
