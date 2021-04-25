import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestAppState();
  }
}

class _TestAppState extends State<TestApp> {
  var _questIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'question': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Red', 'score': 9},
        {'text': 'Green', 'score': 7},
        {'text': 'Blue', 'score': 5},
        {'text': 'Yellow', 'score': 3}
      ],
    },
    {
      'question': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 9},
        {'text': 'Lion', 'score': 7},
        {'text': 'Eagle', 'score': 5},
        {'text': 'Whale', 'score': 2},
        {'text': 'Jaguar', 'score': 3}
      ],
    },
    {
      'question': 'What\'s you favourite food?',
      'answers': [
        {'text': 'Burger', 'score': 9},
        {'text': 'Pizza', 'score': 7},
        {'text': 'Pastry', 'score': 2},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questIndex = _questIndex + 1;
    });

    print(_questIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Personality Test'),
        ),
        body: _questIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questIndex: _questIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
