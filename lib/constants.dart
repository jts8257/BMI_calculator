import 'package:flutter/material.dart';

enum Gender {male, female}

const kBottomContainerHeight = 70.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kBottomContainerColor = Color(0xFFEB1555);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
);

const kResultTitleTextStyle = TextStyle(
  fontSize: 35,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kResultNumberStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kResultBodyStyle = TextStyle(
  fontSize: 22.0,
);

const kCardMargin = EdgeInsets.all(15.0);
const kIconPadding = EdgeInsets.all(10.0);
const kIconSize = 80.0;
const kRoundIconButtonFillColor = Color(0xFF4C4F5E);
const kRoundIconButtonConstraints = BoxConstraints.tightFor(
  width: 56.0,
  height: 56.0,
);