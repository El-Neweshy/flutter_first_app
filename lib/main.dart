import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questions = ['What is your name', 'what is your age'];

  void answerQuestion() {
    print('answered');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Text('The question:'),
            ElevatedButton(child: Text('Answer1'), onPressed: answerQuestion),
            ElevatedButton(child: Text('Answer2'), onPressed: answerQuestion),
            ElevatedButton(
                child: Text('Answer3'), onPressed: () => print('yeah')),
          ],
        ),
      ),
    );
  }
}
