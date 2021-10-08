import 'package:bmi_caluator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_caluator/components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/round_icon_button.dart';
import '../components/bottom_button.dart';
import '../constants.dart';
import 'package:bmi_caluator/calculator_brain.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {selectedGender = Gender.male;});
                      },
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label:'MALE'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {selectedGender = Gender.female;});
                      },
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label:'FEMALE'),
                    ),
                  ),
                ],
              ),
          ),
          Expanded(
            child: ReusableCard(color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Center(
                    child: const Text('HEIGHT', style: kLabelTextStyle),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(height.toString(), style: kNumberStyle,),
                      SizedBox(width: 5.0,),
                      Text('cm', style: kLabelTextStyle,),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor:Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x45EB1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0)
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged:
                        (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                ),
                Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              RoundIconButton(
                                icon: Icons.add,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                )
              ],
            ),
          ),
          BottomButton(
              bottomButtonText: 'CALCULATE' ,
              onTap: () {
                print(height);
                print(weight);
                CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultPage(
                      bmiResultString: calc.getResult(),
                      bmiResultNumber: calc.calculateBMI(),
                      bmiInterpretation: calc.getInterpretation())
                  ),
                );
              }),
        ],
      )
    );
  }
}
