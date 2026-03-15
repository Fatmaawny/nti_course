import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nti_course/task3/profilePage.dart';
import 'package:nti_course/task3/searchPage.dart';

import 'cartPage.dart';
import 'homePage.dart';

class Task3Flutter extends StatefulWidget {
  const Task3Flutter({super.key});

  @override
  State<Task3Flutter> createState() => _Task3FlutterState();
}

class _Task3FlutterState extends State<Task3Flutter> {
  int currentIndex = 0;
  List<String> titles=[
    "الرئيسية",
    "البحث",
    "طلباتي",
    "الملف الشخصي",
  ];
  List pages =[
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentIndex]),
        centerTitle: true,
        backgroundColor: Color(0xFF8EDF7A),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
          items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "الرئيسية"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "البحث"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart),label: "طلباتي"),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),label: "الملف الشخصي"),
      ],
        selectedItemColor: Color(0xFF8EDF7A) ,
        unselectedItemColor:Colors.grey ,

      ),
    );
  }
}
