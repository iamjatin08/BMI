import 'package:flutter/material.dart';
class ReuseableCard extends StatelessWidget {
  final Color colour;
  final Widget CardChild;
  final Function onpress;

  ReuseableCard({@required this.colour, this.CardChild,this.onpress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: CardChild,
        margin: EdgeInsets.all(15),
        decoration:
        BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
