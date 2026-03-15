import 'package:flutter/material.dart';
import 'package:nti_course/widget/customTextForm.dart';

import 'loginScreen.dart';

class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool checkboxvalue=false;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 40,
            child: SizedBox(
              height: 120,
              child: Image.asset("assets/images/logo.png"),
            ),
          ),

          Positioned(
            top: 120,
            left: 0,
            child: SizedBox(
              height: 400,
              child: Image.asset("assets/images/left.png"),
            ),
          ),

          Positioned(
            top: 120,
            right: 0,
            child: SizedBox(
              height: 400,
              child: Image.asset("assets/images/right.png"),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 430,
              decoration: BoxDecoration(
                color: Color(0xFF1380A5),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Customtextform(text: 'الاسم كامل', iconn: Icons.person),
                  Customtextform(text: 'البريد الإلكتروني', iconn: Icons.email),
                  Customtextform(text: 'رقم الموبايل مع رمز الدولة بدون (+)', iconn: Icons.phone_in_talk_sharp),
                  Customtextform(
                    text: 'كلمة المرور',
                    iconn: Icons.password_sharp,
                    preiconn: Icons.remove_red_eye,
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "أوافق على الشروط والاحكام",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Checkbox(
                          value: checkboxvalue,
                          onChanged: (value) {
                            if (value != null) {
                              checkboxvalue = value;
                            }
                          },
                          activeColor: Colors.white,

                          checkColor: Color(0xFF1380A5),

                        ),
                      ],

                  ),

                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: AlignmentGeometry.bottomCenter,
                      height: 40,
                      width: 227,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "إنشاء حساب",
                          style: TextStyle(
                            color: Color(0xFF1380A5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Loginscreen(),
                            ),
                          );
                        },
                        child: Text(
                          "تسجيل الدخول",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        "لديك حساب؟",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF1380A5),
        unselectedItemColor: Color(0xFF6F7077),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        ],
      ),
    );
  }
}
