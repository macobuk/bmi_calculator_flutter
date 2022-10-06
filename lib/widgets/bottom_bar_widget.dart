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
      width: double.infinity,
      height: kBottomContainerHeight,
      child: TextButton(onPressed: null, child: Text('Calculate your BMI now')),
    );
  }
}
