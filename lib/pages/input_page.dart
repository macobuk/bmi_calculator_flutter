import 'package:bmi_calculator/helpers/constants.dart';
import 'package:bmi_calculator/widgets/age_widget.dart';
import 'package:bmi_calculator/widgets/bottom_bar_widget.dart';
import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/weight_widget.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: kBottomContainerColor),
        ),
      ),
      body: Column(
        children: <Widget>[
          GenderWidget(),
          HeightWidget(),
          Expanded(
            child: Row(
              children: [
                WeightWidget(),
                AgeWidget(),
              ],
            ),
          ),
          BottomWidget(),
        ],
      ),
    );
  }
}
