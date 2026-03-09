import 'package:flutter/material.dart';

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Image.asset("assets/images/new.png"),
            ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF768FB7),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Text("أهلاً بك في مؤسسة المسار",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("للفئات الخاصة",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 30,),

                Container(height: 40,width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("تسحيل الدخول",style: TextStyle(fontWeight: FontWeight.bold),)),),
                SizedBox(height: 20,),
                Container(height: 40,width: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("إنشاء حساب",style: TextStyle(fontWeight: FontWeight.bold),)),),
              ],
            )
          )],
        )


      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "settings"),
          BottomNavigationBarItem(icon: Icon(Icons.date_range), label: "date"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
        selectedItemColor: Color(0xFF768FB7),
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
