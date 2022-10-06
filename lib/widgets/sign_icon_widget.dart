import 'package:bmi_calculator/helpers/constants.dart';
import 'package:flutter/material.dart';

const customColor = Color.fromARGB(255, 122, 202, 2);

class SignIconWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  SignIconWidget({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Container(
              child: Icon(
                icon,
                size: 60,
                color: kIconColor,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            text,
            style: kTextStyleCustom,
          ),
        ]);
  }
}
