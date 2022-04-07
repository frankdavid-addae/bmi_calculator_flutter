import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/input_screen.dart';
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
        primaryColor: kXiketicColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: kXiketicColor,
        ),
        scaffoldBackgroundColor: kXiketicColor,
      ),
      home: const InputScreen(),
    );
  }
}
