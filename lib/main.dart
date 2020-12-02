import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  bool isSwiched = false;
  int _questionIndex = 0;
  int _totalScore = 0;
  int num = 0;
  int num1 = 0;
  int num2 = 0;

  List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answerText': [
        {'text': 'White', 'score': 40},
        {'text': 'Blue', 'score': 30},
        {'text': 'Green', 'score': 20},
        {'text': 'Black', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite Animal ?',
      'answerText': [
        {'text': 'Wolf', 'score': 40},
        {'text': 'Dog', 'score': 30},
        {'text': 'Lion', 'score': 20},
        {'text': 'Cat', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite Sport ?',
      'answerText': [
        {'text': 'Football', 'score': 40},
        {'text': 'BasketBall', 'score': 30},
        {'text': 'Bing Bong', 'score': 20},
        {'text': 'Swimming', 'score': 10}
      ]
    },
  ];

  resetApp() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      num = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  answerQuestion(score) {
    if (_questionIndex == 0)
      num = score;
    else if (_questionIndex == 1)
      num1 = score;
    else if (_questionIndex == 2) num2 = score;

    _totalScore += score;
    setState(() {
      if (_questionIndex < _question.length) {
        _questionIndex += 1;
      } else {}
    });
  }

  backStep() {
    if (_questionIndex == 1)
      _totalScore -= num;
    else if (_questionIndex == 2)
      _totalScore -= num1;
    else if (_questionIndex == 3) _totalScore -= num2;

    setState(() {
      _questionIndex--;
    });
  }

  String get scorePharse {
    if (_totalScore >= 70) {
      return 'Awesome';
    } else if (_totalScore >= 40) {
      return 'You are Good';
    } else {
      return 'You are Bad';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Switch(
              value: isSwiched,
              onChanged: (value) {
                setState(() {
                  isSwiched = value;
                  print(isSwiched);
                  if (isSwiched == true) {
                    w = Colors.black;
                    b = Colors.white;
                  }
                  if (isSwiched == false) {
                    b = Colors.black;
                    w = Colors.white;
                  }
                });
              },
              activeColor: b,
              inactiveThumbColor: Colors.black,
              inactiveTrackColor: Colors.grey,
            )
          ],
          title: Text(
            'Quiz App',
            style: TextStyle(color: w),
          ),
        ),
        body: Container(
          color: w,
          child: Padding(
              padding: const EdgeInsets.all(08.0),
              child: _questionIndex < _question.length
                  ? Quiz(_question, _questionIndex, answerQuestion, backStep)
                  : Result(resetApp, scorePharse, _totalScore)),
        ),
      ),
    );
  }
}
