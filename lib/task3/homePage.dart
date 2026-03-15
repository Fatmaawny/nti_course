import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchBar(hintText: "ابحث", leading: Icon(CupertinoIcons.search)),
          SizedBox(height: 20),
          Align(
            alignment: AlignmentGeometry.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text("الفئات", style: TextStyle(fontSize: 17)),
            ),
          ),
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 7,
                width: 7,
                color: CupertinoColors.inactiveGray,
              );
            },
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,))
        ],
      ),
    );
  }
}
