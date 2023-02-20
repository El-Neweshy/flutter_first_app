import 'package:flutter/material.dart';
import 'package:flutter_first_app/appbar.dart';
import 'package:flutter_first_app/quiz.dart';
import 'done.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const question = [
    {
      'q': 'What is your name?',
      "c1": 'Mahmoud',
      'c2': 'Mohammed',
      'c3': 'Saad'
    },
    {
      'q': 'What is your age?',
      "c1": '10 - 20',
      'c2': '21 - 30',
      'c3': '31 - 40'
    },
    {
      'q': 'What is your current class?',
      "c1": 'class 1/1',
      'c2': ' class 1/2',
      'c3': ' class 1/3'
    },
  ];

  var _questionIndex = 0;

  void resetQuestionIndex() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void answerQuestion() {
    setState(() {
      if (_questionIndex < question.length - 1) {
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
        // appBar: MyAppBar(),
        appBar: AppBar(
          title: const Text(
            'My Questions App',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Icon(
            Icons.account_circle_rounded,
          ),
          leadingWidth: 100,
          actions: [
            Icon(Icons.more_vert),
          ],
          elevation: 20,
          backgroundColor: Color.fromARGB(47, 126, 20, 29),
        ),

        body: _questionIndex < question.length - 1
            ? Quiz(question, _questionIndex, answerQuestion)
            : Done(resetQuestionIndex),
      ),
    );
  }
}
