import 'package:bmi_calculator/components/reuseable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResults;
  final String calculatedBMI;
  final String interpretation;

  ResultsPage({this.bmiResults, this.calculatedBMI, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "YOUR RESULTS",
            style: kLargeButtonTextStyle,
          ),
          Expanded(
              flex: 5,
              child: ReuseableCard(
                color: kActiveCardColor,
                margin: EdgeInsets.all(15.0),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                        child: Text(
                      bmiResults,
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[300]),
                    )),
                    Center(
                        child: Text(
                      calculatedBMI,
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    Center(
                        child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    )),
                  ],
                ),
              )),
          BottomButton(
              buttonText: "RE-CALCULATE",
              onTap: () {
                Navigator.of(context).pop();
              })
        ],
      ),
    );
  }
}
