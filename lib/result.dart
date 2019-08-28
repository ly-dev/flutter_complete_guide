import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int totalScore;
  final Function restQuiz;

  Result(this.totalScore, this.restQuiz);

  String get resultPhrase {
    var resultText = "Your score is $totalScore";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        FlatButton(
          child: Text(
            'Restart quiz',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
          onPressed: restQuiz,
        )
      ]),
    );
  }
}
