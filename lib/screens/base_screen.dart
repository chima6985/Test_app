import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final _auth = FirebaseAuth.instance;
  User? loggedInUser;

  // @override
  // void initState() {
  //   super.initState();
  //   getCurrentUser();
  // }

  // void getCurrentUser() {
  //   try {
  //     final userr = _auth.currentUser;
  //     if (userr != null) {
  //       loggedInUser = userr;
  //       print(loggedInUser?.email);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/meditate.png')),
        ),
      ),
    );
  }
}
