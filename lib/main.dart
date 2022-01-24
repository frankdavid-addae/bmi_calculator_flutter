// ignore_for_file: prefer_const_constructors

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: xiketicColor,
        appBarTheme: AppBarTheme(
          backgroundColor: xiketicColor,
        ),
        scaffoldBackgroundColor: xiketicColor,
      ),
      home: const InputPage(),
    );
  }
}
