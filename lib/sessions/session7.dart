
import 'package:flutter/material.dart';

import '../widget/categoryWidget.dart';

class Session7 extends StatelessWidget {
  const Session7({super.key});

  @override
  Widget build(BuildContext context) {
    int? currentIndex=0;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Icon(Icons.shopping_basket_outlined, color: Colors.blueAccent),
        leadingWidth: 20,
        title: SearchBar(
          leading: Icon(Icons.search),
          hintText: "Search Products",
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(Icons.shopping_bag, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 140,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orangeAccent, Colors.yellow],
                  begin: AlignmentGeometry.topLeft,
                  end: FractionalOffset.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 3),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Big Sale!",
                        style: TextStyle(color: Colors.white, fontSize: 33),
                      ),
                      Text(
                        "Up to 50% OFF",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Container(
                        height: 35,
                        width: 85,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            "Shop now",

                            style: TextStyle(
                              color: Colors.orangeAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 160,
                    width: 160,
                    child: Image.asset("assets/images/presents.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: AlignmentGeometry.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categorywidget(
                      color: Color(0xFF9ABADD),
                      text: 'Electronics',
                      icon: Icons.devices_sharp,
                    ),Categorywidget(
                      color: Color(0xFF9EDD9A),
                      text: 'Clothing',
                      icon: Icons.shopping_bag,
                    ),Categorywidget(
                      color: Color(0xFFDDD09A),
                      text: 'Home',
                      icon: Icons.home,
                    ),Categorywidget(
                      color: Color(0xFFDD9AB1),
                      text: 'Beauty',
                      icon: Icons.palette_rounded,
                    ),Categorywidget(
                      color: Color(0xFF9ABADD),
                      text: 'Electronics',
                      icon: Icons.devices_sharp,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: AlignmentGeometry.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  "Popular products",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedLabelStyle: TextStyle(color: Colors.blueAccent),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]),
    );
  }
}