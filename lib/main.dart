import 'package:flutter/material.dart';
import 'package:flutter_first_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    'What is your name?',
    'What is your age?',
    'What is your class?'
  ];

  var _questionIndex = 0;

  void resetQuestionIndex() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void answerQuestion() {
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex += 1;
      } else {
        _questionIndex = 0;
      }
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questions App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(child: Text('Answer1'), onPressed: answerQuestion),
            ElevatedButton(child: Text('Answer2'), onPressed: answerQuestion),
            ElevatedButton(child: Text('reset'), onPressed: resetQuestionIndex),
          ],
        ),
      ),
    );
  }
}
