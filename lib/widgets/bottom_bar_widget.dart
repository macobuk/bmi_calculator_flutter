import 'package:bmi_calculator/helpers/calculator_brain.dart';
import 'package:bmi_calculator/pages/results_page.dart';
import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({Key key}) : super(key: key);

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBottomContainerColor,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: kBottomContainerHeight,
      child: TextButton(
          onPressed: () {
            CalculatorBrain calc = CalculatorBrain(height, weight);
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: ((context) => ResultsPage(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResults(),
                        interpretation: calc.getInterpretation()))));
          },
          child: Text(
            'CALCULATE BMI',
            style: TextStyle(color: kInactiveCardColor, fontSize: 22),
          )),
    );
  }
}
