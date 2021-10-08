import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';
import '../constants.dart';
import 'package:bmi_caluator/calculator_brain.dart';

import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResultString, required this.bmiResultNumber, required this.bmiInterpretation});

  final String bmiResultString;
  final String bmiResultNumber;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Your Result',
                    style: kResultTitleTextStyle,
                  ),
                )
            ),Expanded(
                flex: 5,
                child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          bmiResultString,
                          textAlign: TextAlign.center,
                          style: kResultTextStyle,
                        ),
                        Text(
                          bmiResultNumber,
                          textAlign: TextAlign.center,
                          style: kResultNumberStyle,
                        ),
                        Text(
                          bmiInterpretation,
                          textAlign: TextAlign.center,
                          style: kResultBodyStyle,
                        )
                      ],
                    )
                )
            ),
            BottomButton(
                bottomButtonText: 'RE-CALCULATE' ,
                onTap: () {
                  Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context) => InputPage()));
                }),

          ],
        )

    );
  }
}

