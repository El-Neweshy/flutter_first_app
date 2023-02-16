import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String quesionText;

  Question(this.quesionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        quesionText,
        style: TextStyle(
          fontSize: 28,
          color: Color.fromRGBO(10, 20, 30, 80),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
