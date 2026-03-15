import 'package:flutter/material.dart';
import 'package:nti_course/registerScreen.dart';
import 'package:nti_course/widget/customTextForm.dart';
class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  Text(
                    "أهلاً بك نحن سعداء بعودتك",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "من فضلك قم بتسجيل الدخول",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Customtextform(text: 'رقم الهاتف', iconn: Icons.person,),
                  Customtextform(text: 'كلمة المرور', iconn: Icons.password_sharp,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: Text(
                        "هل نسيت كلمة المرور؟",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: (){
                    },
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
                          "تسجيل الدخول",
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
                      Text(
                        "إنشاء حساب",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      SizedBox(width: 4,),
                      Text(
                        "ليس لديك حساب؟",
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
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        ],
      ),
    );
  }
}
