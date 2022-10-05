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
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(13, 16, 32, 0.5)),
              ),
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(30, 27, 49, 0.7),
                  )),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(23, 132, 119, 219),
                  )),
            ],
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(30, 27, 49, 0.7),
                  )),
              Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromRGBO(30, 27, 49, 0.7),
                  )),
            ],
          ),
        ]));
  }
}
