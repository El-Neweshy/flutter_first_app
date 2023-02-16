import 'package:flutter/material.dart';
import 'package:flutter_first_app/question.dart';
import 'package:flutter_first_app/choice.dart';
import 'package:flutter_first_app/appbar.dart';

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
          title: const Text('My Questions App'),
          leading: Icon(Icons.account_circle_rounded),
          leadingWidth: 100,
          actions: [
            Icon(Icons.more_vert),
          ],
          elevation: 20,
          backgroundColor: Color.fromARGB(48, 184, 43, 55),
        ),

        body: _questionIndex < question.length - 1
            ? Column(
                children: [
                  Question(question[_questionIndex]['q']),
                  Choice(question[_questionIndex]['c1'], answerQuestion),
                  Choice(question[_questionIndex]['c2'], answerQuestion),
                  Choice(question[_questionIndex]['c3'], answerQuestion),
                  Choice('RESET', resetQuestionIndex),
                ],
              )
            : Column(children: [
                Text(
                  'you are done!',
                  style: TextStyle(
                    fontSize: 28,
                    color: Color.fromRGBO(10, 20, 30, 80),
                  ),
                ),
                Choice('RESET', resetQuestionIndex),
              ]),
      ),
    );
  }
}
