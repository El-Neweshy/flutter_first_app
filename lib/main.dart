import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    'What is your name?',
    'what is your age?',
    'What is your class?'
  ];

  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print('done answered');
  }

  void resetQuestionIndex() {
    setState(() {
      questionIndex = 0;
    });

    print('reset done');
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
            Text(questions[questionIndex]),
            ElevatedButton(child: Text('Answer1'), onPressed: answerQuestion),
            ElevatedButton(child: Text('Answer2'), onPressed: answerQuestion),
            ElevatedButton(child: Text('reset'), onPressed: resetQuestionIndex),
          ],
        ),
      ),
    );
  }
}
