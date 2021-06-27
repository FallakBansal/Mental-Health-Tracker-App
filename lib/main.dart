import 'package:flutter/material.dart';
import 'screens/home.dart';

/*
import 'screens/tasks.dart';
import 'screens/quiz.dart';
import 'screens/result.dart';
import 'screens/questionsmain.dart';
//import 'screens/dashboard.dart';
*/
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}