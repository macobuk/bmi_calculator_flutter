import 'package:bmi_calculator/widgets/reuseable_card_widget.dart';
import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({Key key}) : super(key: key);

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ReauseableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                children: <Widget>[
                  Text(
                    'Height',
                    style: kTextStyleCustom,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kNumberTextStyle),
                      SizedBox(
                        width: 5,
                      ),
                      Text('cm', style: kTextStyleCustom),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kBottomContainerColor,
                      inactiveTrackColor: kInactiveCardColor,
                      thumbColor: kBottomContainerColor,
                      overlayColor: kIconColor,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                    ),
                    child: Slider(
                      min: 120.0,
                      max: 220.0,
                      value: height.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
