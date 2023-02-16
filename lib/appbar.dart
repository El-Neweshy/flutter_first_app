import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions App'),
        leading: Icon(Icons.account_circle_rounded),
        leadingWidth: 100,
        actions: [
          Icon(Icons.more_vert),
        ],
        elevation: 15,
        backgroundColor: Color.fromARGB(50, 20, 50, 10),
      ),
    );
  }
}
