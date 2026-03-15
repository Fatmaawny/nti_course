import 'package:flutter/material.dart';

import '../authScreen.dart';

class Session8 extends StatelessWidget {
  const Session8({super.key});

  //routes have file =>by static String names for all pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: AlignmentGeometry.topCenter,
            child: Positioned(
              child: Container(
                height: 112,
                child: Image.asset("assets/images/top.png"),
              ),
              top: 120,
            ),
          ),
          Container(
            alignment: AlignmentGeometry.centerLeft,
            child: Positioned(
              child: Container(
                height: 370,
                child: Image.asset("assets/images/left.png"),
              ),
              left: 0,
            ),
          ),
          Container(
            alignment: AlignmentGeometry.centerRight,
            child: Positioned(
              child: Container(
                height: 330,
                child: Image.asset("assets/images/right.png"),
              ),
              right: 0,
            ),
          ),
          Container(
            alignment: AlignmentGeometry.topCenter,
            padding: EdgeInsets.only(top: 100),
            child: Positioned(
              child: Container(
                height: 150,
                child: Image.asset("assets/images/logo.png"),
              ),
              top: 0,
            ),
          ),
          Container(
            alignment: AlignmentGeometry.bottomCenter,
            child: Positioned(
              child: Container(
                height: 400,
                child: Image.asset("assets/images/child.png"),
              ),
              top: 0,
            ),
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Authscreen()),
                );
              },
              child: Container(
                alignment: AlignmentGeometry.bottomCenter,
                height: 56,
                width: 327,
                decoration: BoxDecoration(
                  color: Color(0xFFE33C64),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "دعنا نبدأ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
