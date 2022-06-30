import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';
import 'ReuseableCard.dart';
class Results extends StatelessWidget {

  Results(
      {@required this.interpretation,
        @required this.bmiResult,
        @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BMI CALCULTOR"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(child: Text("YOUR RESULTS" , style: ktitleTextStyle,)),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: kActiveCardColor,
                CardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(resultText , style: kresultTextStyle,),
                    Text(bmiResult,style: kBmiTextStyle,),
                    Text(interpretation , style: kBodyTextStyle,textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                child: Center(child: Text("RE-CALCULATE",style: klargeButtonTextStyle,)) ,
                color: kBottomCardColor,
                height: 80,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
              ),
            )
          ],
        ),
      )
    );
  }
}
