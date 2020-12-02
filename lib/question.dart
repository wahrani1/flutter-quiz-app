import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';

class Question extends StatelessWidget {
  final _questionText;

  const Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Text(
          _questionText,
          textAlign: TextAlign.center,
          style: TextStyle(

            fontSize: 40,
            fontWeight: FontWeight.bold,
            color:b
          ),
        ),
      ),
    );
  }
}
