import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.color, this.cardChild, this.onPress});

  final Color? color;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild ,
        margin: kCardMargin,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0)
        ),
      ),
    );
  }
}