import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'main.dart';

// ignore: must_be_immutable
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _question;
  final int _questionIndex;
  final Function answerQuestion;
  final Function x;

  Quiz(this._question, this._questionIndex, this.answerQuestion, this.x);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_question[_questionIndex]['questionText']),
        ...(_question[_questionIndex]['answerText']
                as List<Map<String, Object>>)
            .map((index) {
          return Answer(() => answerQuestion(index['score']), index['text']);
        }).toList(),
        _questionIndex >= 1
            ? Transform.translate(
                child: FloatingActionButton(
                  onPressed: x,
                  child: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: w,
                  ),
                ),
                offset: Offset(155, 200),
              )
            : Container()
      ],
    );
  }
}
