import 'package:flutter/material.dart';
import 'package:overweight/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color.fromARGB(255, 17, 22, 48),
        scaffoldBackgroundColor: Color.fromARGB(255, 8, 13, 39),
      ),
      home: InputPage(),
    );
  }
}
