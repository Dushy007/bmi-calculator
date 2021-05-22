import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonTitle, @required this.onTap});

  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kCalculateTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        width: double.infinity,
        height: kBottomContainerHeight,
        // margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
