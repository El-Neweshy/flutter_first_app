import 'package:flutter/material.dart';

class Choice extends StatelessWidget {
  final String btnName;
  final VoidCallback onPressed;
  Choice(this.btnName, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(btnName),
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromRGBO(50, 20, 0, 50)),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      padding: EdgeInsets.all(2),
    );
  }
}
