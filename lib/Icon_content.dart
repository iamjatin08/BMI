import 'package:flutter/cupertino.dart';
import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.name});
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: klableTextStyle,
        )
      ],
    );
  }
}
