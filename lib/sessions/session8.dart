import 'package:flutter/material.dart';

class Session8 extends StatelessWidget {
  const Session8({super.key});

  //routes have file =>by static String names for all pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: 200,
                child: Image.asset("assets/images/ph2.jpeg"),
              ),
              right: 0,
              top: 120,
            ),
            Positioned(
              child: Container(
                height: 120,
                child: Image.asset("assets/images/ph1.jpeg"),
              ),
              top: 0,
            ),

            Positioned(
              child: Container(
                height: 400,
                child: Image.asset("assets/images/ph3.jpeg"),
              ),
              top: 100,
              left: 0,
            ),

            Positioned(
              child: Container(
                height: 164,
                child: Image.asset("assets/images/nbnb.jpeg"),
              ),
              top: 50,
              left: 50,
            ),
          ],
        ),
      ),
    );
  }
}
