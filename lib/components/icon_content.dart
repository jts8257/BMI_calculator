import 'package:flutter/material.dart';
import 'package:bmi_caluator/constants.dart';

class IconContent extends StatelessWidget {

  IconContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kIconPadding,
      child: Column(
        children: [
          Icon(icon, size: kIconSize),
          const SizedBox(height: 20.0,),
          Text(label, style: kLabelTextStyle),
        ],
      ),
    );
  }
}