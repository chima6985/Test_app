import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test_application/screens/home_page.dart';
import 'package:test_application/screens/signin_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final options = const FirebaseOptions(
    apiKey: 'AIzaSyAr3EdS_iSynGleLpg8fQc7zwibJ-sfJeg',
    appId: 'com.chima.test_application',
    messagingSenderId: 'your-messaging-sender-id',
    projectId: 'test-app-6c949',
  );

  await Firebase.initializeApp(options: options);

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? isFirstTime = prefs.getBool('isFirstTime');

  
  runApp(MyApp(isFirstTime: isFirstTime ?? true));
}

class MyApp extends StatelessWidget {
  final bool isFirstTime;
  const MyApp({super.key, required this.isFirstTime});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
     home: isFirstTime ? MyHomePage() : SigninScreen(),);
  }
}
