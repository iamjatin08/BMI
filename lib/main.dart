import 'package:flutter/material.dart';
import 'input_file.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0E0F20),
        textTheme: TextTheme(body1: TextStyle(color: Colors.white))

      ),
      home: InputPage(),
    );
  }
}


