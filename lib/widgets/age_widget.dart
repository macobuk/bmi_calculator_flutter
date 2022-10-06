import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../helpers/constants.dart';
import 'my_custom_button_widget.dart';
import 'reuseable_card_widget.dart';

class AgeWidget extends StatefulWidget {
  const AgeWidget({Key key}) : super(key: key);

  @override
  State<AgeWidget> createState() => _AgeWidgetState();
}

class _AgeWidgetState extends State<AgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReauseableCard(
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Age',
              style: kTextStyleCustom,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  age.toString(),
                  style: kNumberTextStyle,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCustomButton(
                  value: age.toDouble(),
                  onPressed: () {
                    setState(() {
                      age--;
                    });
                  },
                  icon: FontAwesomeIcons.minus,
                ),
                SizedBox(
                  width: 10,
                ),
                MyCustomButton(
                  value: age.toDouble(),
                  onPressed: () {
                    setState(() {
                      age++;
                    });
                  },
                  icon: FontAwesomeIcons.plus,
                ),
              ],
            ),
          ],
        ),
        colour: kActiveCardColor,
      ),
    );
  }
}
