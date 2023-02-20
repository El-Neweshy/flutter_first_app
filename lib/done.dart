import 'package:flutter/material.dart';
import 'choice.dart';

class Done extends StatelessWidget {
  final Function action;
  Done(this.action);

  String get resultPhrase {
    String resultText = 'You did it!';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(174, 228, 93, 176),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50),
          Choice('RESET', action),
        ]);
  }
}
