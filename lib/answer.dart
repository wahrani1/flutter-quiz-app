import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'main.dart';
class Answer extends StatelessWidget {
  final String textAnswer;
  final Function x;
  Answer(this.x, this.textAnswer);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: RaisedButton(
          child: Text(
            textAnswer,

            style: TextStyle(
              color: w,
              fontSize:25,
            ),
          ),
          textColor: Colors.white,
          color: Colors.blue,
          padding: EdgeInsets.all(8),
          onPressed:x
      ),
    );
  }
}
