import 'package:flutter/material.dart';
import 'choice.dart';

class Done extends StatelessWidget {
  final Function action;
  Done(this.action);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'you are done!',
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(175, 5, 156, 12),
            ),
          ),
          SizedBox(height: 50),
          Choice('RESET', action),
        ]);
  }
}
