import 'package:flutter/material.dart';
import 'package:bmi_caluator/constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.bottomButtonText, required this.onTap});

  final String bottomButtonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            bottomButtonText,
            style: kLargeButtonTextStyle,),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 15.0),
      ),
    );
  }
}