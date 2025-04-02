import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_application/screens/landing_page.dart';
// import 'package:test_application/screens/home_page.dart';
import 'package:test_application/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final options = const FirebaseOptions(
    apiKey: 'AIzaSyAr3EdS_iSynGleLpg8fQc7zwibJ-sfJeg',
    appId: 'com.chima.test_application',
    messagingSenderId: 'your-messaging-sender-id',
    projectId: 'test-app-6c949',
  );

  await Firebase.initializeApp(options: options);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LandingPage());
  }
}
