import 'package:bmi_calculator/helpers/constants.dart';
import 'package:flutter/material.dart';
import './pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color.fromRGBO(13, 16, 32, 0.5),
            appBarTheme: AppBarTheme(
              backgroundColor: kBottomContainerColor,
            )),
        home: InputPage());
  }
}
