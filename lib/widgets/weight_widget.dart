import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../helpers/constants.dart';
import 'my_custom_button_widget.dart';
import 'reuseable_card_widget.dart';

class WeightWidget extends StatefulWidget {
  const WeightWidget({Key key}) : super(key: key);

  @override
  State<WeightWidget> createState() => _WeightWidgetState();
}

class _WeightWidgetState extends State<WeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReauseableCard(
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Weight',
              style: kTextStyleCustom,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  weight.toString(),
                  style: kNumberTextStyle,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('kg', style: kTextStyleCustom),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCustomButton(
                  value: weight.toDouble(),
                  onPressed: () {
                    setState(() {
                      weight--;
                    });
                  },
                  icon: FontAwesomeIcons.minus,
                ),
                SizedBox(
                  width: 10,
                ),
                MyCustomButton(
                  value: weight.toDouble(),
                  onPressed: () {
                    setState(() {
                      weight++;
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
