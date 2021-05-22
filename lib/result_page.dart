import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Text(
              "Your Result",
              style: kResultHeaderTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Text(
                        "Normal",
                        style: kLabelTextStyle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "26.7",
                      style: kNumberTextStyle,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "You have higher than normal BMI. Try to exercise more.",
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle,
                    ),
                  ),
                ],
              ),
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xFF1D1E33),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                "RE-CALCULATE",
                style: kCalculateTextStyle,
              ),
            ),
            color: kBottomContainerColour,
            width: double.infinity,
            height: kBottomContainerHeight,
            // margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
