import 'package:bmi_calculator/widgets/reuseable_card_widget.dart';
import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultsPage({
    Key key,
    @required this.bmiResult,
    @required this.resultText,
    @required this.interpretation,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('BMI CALCULATOR RESULTS',
              style: TextStyle(color: kActiveCardColor, fontSize: 20))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Your Results',
            style: kNumberTextStyle,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: ReauseableCard(
              colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText,
                    style: kTextStyleCustom,
                  ),
                  Text(
                    bmiResult,
                    style: kResultNumberStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kIconColor, fontSize: 20),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: kActiveCardColor,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            height: kBottomContainerHeight,
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'RE-CALCULATE BMI',
                  style: TextStyle(color: kBottomContainerColor, fontSize: 22),
                )),
          )
        ],
      ),
    );
  }
}
