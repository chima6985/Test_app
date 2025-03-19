import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final Color singupScreenColor = Color(0XFFECF4E2);
  @override
  Widget build(BuildContext context) {
    final mqr = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
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
                  onTap: () {},
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
                child: Container(
                  height: 60,
                  width: 352,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 60,
                  width: 352,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  height: 60,
                  width: 352,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
