import 'package:bmi_calculator/widgets/reuseable_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../helpers/constants.dart';
import 'sign_icon_widget.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({Key key}) : super(key: key);

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: ReauseableCard(
              onPress: () {
                setState(() {
                  selectedGender = Gender.male;
                });
              },
              colour: selectedGender == Gender.male
                  ? kActiveCardColor
                  : kInactiveCardColor,
              cardChild: SignIconWidget(
                icon: FontAwesomeIcons.mars,
                text: 'MALE',
              ),
            ),
          ),
          Expanded(
            child: ReauseableCard(
              onPress: () {
                setState(() {
                  selectedGender = Gender.female;
                });
              },
              colour: selectedGender == Gender.female
                  ? kActiveCardColor
                  : kInactiveCardColor,
              cardChild: SignIconWidget(
                icon: FontAwesomeIcons.venus,
                text: 'FEMALE',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
