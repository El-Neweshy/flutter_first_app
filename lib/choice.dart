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
        child: Text(
          btnName,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        onPressed: onPressed,
        if (1==1) {
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Color.fromRGBO(50, 20, 0, 50)),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            padding: MaterialStateProperty.all(EdgeInsets.all(15)),
            // shape:MaterialStateProperty.all(),
            minimumSize: MaterialStateProperty.all(Size(10, 20)))}else{},
      ),
      padding: EdgeInsets.all(2),
    );
  }
}
