import 'package:flutter/material.dart';

import 'loginScreen.dart';
class Registerscreen extends StatelessWidget {
  const Registerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 90,
            child: SizedBox(
              height: 120,
              child: Image.asset("assets/images/logo.png"),
            ),
          ),

          Positioned(
            top: 170,
            left: 0,
            child: SizedBox(
              height: 400,
              child: Image.asset("assets/images/left.png"),
            ),
          ),

          Positioned(
            top: 170,
            right: 0,
            child: SizedBox(
              height: 400,
              child: Image.asset("assets/images/right.png"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Center(
              child: SizedBox(
                height: 500,
                child: Image.asset("assets/images/children.png"),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 270,
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
                    "أهلاً بك في مؤسسة المسار",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "للفئات الخاصة",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginscreen()),
                      );
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
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registerscreen()),
                      );
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
                          "إنشاء حساب",
                          style: TextStyle(
                            color: Color(0xFF1380A5),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
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
