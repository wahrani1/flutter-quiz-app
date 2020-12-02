import 'package:flutter/material.dart';
import 'main.dart';
// ignore: must_be_immutable
class Result extends StatelessWidget {
  final Function r;
  final String scorePharse;
  final int _totalScore;


  Result(this.r, this.scorePharse, this._totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your Score: $_totalScore',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: b
            ),
          ),
          Text(
            scorePharse,
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.bold,
              color: b
            ),
          ),
          TextButton(
            child: Text(
              'Restart The App',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
              ),
            ),
            onPressed: r,
          )
        ],
      ),
    );
  }
}
