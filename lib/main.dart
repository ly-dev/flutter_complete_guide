import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 2},
        {'text': 'Fish', 'score': 3},
        {'text': 'Duck', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favourite place?',
      'answers': [
        {'text': 'Place 1', 'score': 1},
        {'text': 'Place 2', 'score': 2},
        {'text': 'Place 3', 'score': 3},
        {'text': 'Place 4', 'score': 4},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                _questions[_questionIndex],
                _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
