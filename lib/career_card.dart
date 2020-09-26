import 'package:flutter/material.dart';

class CareerCard extends StatelessWidget {
  CareerCard({@required this.careerName});
  final String careerName;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      child: UnconstrainedBox(
        child: Container(
          child: Text(careerName,
          style: TextStyle(
            fontFamily: "Amaranth",
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            ),
          ),
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(17.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                spreadRadius: 2.0,
              )],
          ),
        ),
      ),
      feedback: UnconstrainedBox(
        child: Container(
          child: Text(careerName,
            style: TextStyle(
              fontFamily: "Amaranth",
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          margin: EdgeInsets.all(50.0),
          padding: EdgeInsets.all(17.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      childWhenDragging: Container(),
    );
  }
}