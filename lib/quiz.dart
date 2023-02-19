import 'package:flutter/material.dart';
import 'choice.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List question;
  final int questionIndex;
  final Function action;

  Quiz(this.question, this.questionIndex, this.action);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['q']),
        Choice(question[questionIndex]['c1'], action),
        Choice(question[questionIndex]['c2'], action),
        Choice(question[questionIndex]['c3'], action),
      ],
    );
  }
}
