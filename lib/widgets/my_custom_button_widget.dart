import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class MyCustomButton extends StatelessWidget {
  MyCustomButton({
    @required this.icon,
    this.color,
    @required this.onPressed,
    @required this.value,
  });
  final IconData icon;
  final IconData color;

  final Function() onPressed;

  final double value;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6,
      child: Icon(
        icon,
        color: kIconColor,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      fillColor: kInactiveCardColor,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      splashColor: kBottomContainerColor,
    );
  }
}
