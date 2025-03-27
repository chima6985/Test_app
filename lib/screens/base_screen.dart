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
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final userr = _auth.currentUser;
      if (userr != null) {
        loggedInUser = userr;
        print(loggedInUser?.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: mqr.height,
        width: mqr.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/meditate.png')),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Meditate',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
