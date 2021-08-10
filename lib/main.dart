import 'package:flutter/material.dart';
import 'Intro.dart';
import 'HomePage.dart';
import 'package:persian_fonts/persian_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}
