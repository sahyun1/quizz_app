import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favourite colour?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'green', 'score': 20},
        {'text': 'yellow', 'score': 30},
      ]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Dog', 'score': 30},
      ]
    },
    {
      'questionText': 'what\'s your favourite car?',
      'answers': [
        {'text': 'KIA', 'score': 10},
        {'text': 'Hyundai', 'score': 20},
        {'text': 'Ford', 'score': 30},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);

    // if(_questionIndex <questions.length) {
    //  print('we have more questions')
    // }
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
              answerQuestion: _answerQuestion,
              questions: _questions,
              questionIndex: _questionIndex)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
