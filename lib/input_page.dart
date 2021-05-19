import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/reusable_card.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColour = inactiveCardColour;
  Color femaleColour = inactiveCardColour;

// 1 - male 2- female
  void updateColour(Gender gender) {
    if (gender == Gender.male) {
      if (maleColour == inactiveCardColour) {
        maleColour = activeCardColour;
        femaleColour = inactiveCardColour;
      } else {
        maleColour = inactiveCardColour;
      }
    } else {
      if (femaleColour == inactiveCardColour) {
        femaleColour = activeCardColour;
        maleColour = inactiveCardColour;
      } else {
        femaleColour = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleColour,
                      cardChild: IconContent(
                        icon: Icon(FontAwesomeIcons.mars, size: 80.0),
                        title: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleColour,
                      cardChild: IconContent(
                        title: "FEMALE",
                        icon: Icon(
                          FontAwesomeIcons.venus,
                          size: 80.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: activeCardColour),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColour),
                ),
                Expanded(
                  child: ReusableCard(colour: activeCardColour),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColour,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
