import 'package:flutter/material.dart';
import '../constants.dart';

class RoundIconButton extends StatelessWidget {

  RoundIconButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon, color : Colors.white,),
      onPressed: onPressed,
      elevation: 8.0,
      shape: const CircleBorder(),
      fillColor: kRoundIconButtonFillColor,
      constraints: kRoundIconButtonConstraints,
    );
  }
}