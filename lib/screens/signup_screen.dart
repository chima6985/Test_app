import 'package:flutter/material.dart';
import 'package:test_application/screens/base_screen.dart';
import 'package:test_application/screens/landing_page.dart';
import '';
import 'package:firebase_auth/firebase_auth.dart';

class SignupScreen extends StatefulWidget {
  SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final Color singupScreenColor = Color(0XFFECF4E2);
  final _auth = FirebaseAuth.instance;

  String? email;
  String? password;
  String? name;

  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              margin: EdgeInsets.all(0),
              width: mqr.width,
              height: mqr.height,
              decoration: BoxDecoration(color: singupScreenColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0XFFE5E5E5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 42,
                        color: Color(0XFF3C6255),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      'Create Your account',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF3E3E3E),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: Container(
                      height: 60,
                      width: 352,
                      decoration: BoxDecoration(),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color(0XFF609966),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook, size: 35, color: Colors.white),
                            SizedBox(width: 8),
                            Text(
                              'CONTINUE WITH FACEBOOK',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Container(
                      height: 60,
                      width: 352,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0XFF609966), width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.mail_outline_outlined,
                              size: 35,
                              color: Color(0XFF3C4D47),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'CONTINUE WITH E-MAIL',
                              style: TextStyle(
                                color: Color(0XFF3C4D47),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Text(
                      'OR SIGN UP WITH GOOGLE',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF3E3E3EB5),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: SizedBox(
                      height: 60,
                      width: 352,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onChanged: (value) {
                          email = value;
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      height: 60,
                      width: 352,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onChanged: (value) {
                          name = value;
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      height: 60,
                      width: 352,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onChanged: (value) {
                          password = value;
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'I have read the  ',
                        style: TextStyle(
                          color: Color(0XFF3E3E3EB5),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          WidgetSpan(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LandingPage(),
                                  ),
                                );
                              },
                              child: Text(
                                'PRIVACY POLICY',
                                style: TextStyle(
                                  color: Color(0XFF3E3E3EB5),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 55),
                  Center(
                    child: SizedBox(
                      height: 55,
                      width: 320,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color(0XFF609966),
                          ),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        onPressed: () async {
                          try{
                            final newUser = await _auth.createUserWithEmailAndPassword(email: email ?? '' , password: (password != null ? password! : '') );
                            if(newUser !=null){
                              Navigator.push(context, MaterialPageRoute(builder: (contexxt) => BaseScreen(),),);
                            }
                        }
                        catch(e){
                          print(e);
                        }
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
