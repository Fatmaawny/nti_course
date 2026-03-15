import 'package:flutter/material.dart';
import 'package:nti_course/sessions/session8.dart';
import 'package:nti_course/task3/task3_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Task3Flutter(),
      theme: ThemeData(
        fontFamily: "Almarai"
      ),
    );
  }
}