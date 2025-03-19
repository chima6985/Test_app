import 'package:flutter/material.dart';
class SignupScreen extends StatelessWidget{
  SignupScreen({super.key});
  final Color singupScreenColor = Color(0XFFECF4E2);
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Container(decoration: BoxDecoration(
      color: singupScreenColor
    ),)
  );
  }
}