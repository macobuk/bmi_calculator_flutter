import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Gender { male, female }

Gender selectedGender;

int height = 180;
int weight = 60;
int age = 18;

const double kBottomContainerHeight = 70;

const kInactiveCardColor = Color(0xFF111328);
const kActiveCardColor = Color.fromARGB(255, 49, 2, 116);
const kBottomContainerColor = Color.fromARGB(255, 122, 202, 2);
const kIconColor = Colors.white;

final kTextStyleCustom = TextStyle(
    fontSize: 25,
    color: kBottomContainerColor,
    fontFamily: GoogleFonts.overpass().fontFamily);

const kNumberTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
  color: kIconColor,
);
