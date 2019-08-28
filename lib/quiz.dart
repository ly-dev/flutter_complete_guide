import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final Map<String, Object> question;
  final Function answerQuestion;

  Quiz(this.question, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(question['questionText']),
      ...(question['answers'] as List<Map<String, Object>>).map((answerMap,) {
        return Answer(
          answerMap['text'],
          () => answerQuestion(
            answerMap['score'],
          ),
        );
      }).toList(),
    ]);
  }
}
