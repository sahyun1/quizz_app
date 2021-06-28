import 'package:flutter/material.dart';
import 'package:quizz_app/question.dart';

import './question.dart';
import './answer.dart';
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
  final questions = const [
    {
      'questionText': 'what\'s your favourite colour?',
      'answers': ['black', 'green', 'yellow']
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answers': ['Tiger', 'Cat', 'Dog']
    },
    {
      'questionText': 'what\'s your favourite car?',
      'answers': ['KIA', 'Hyundai', 'Ford']
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
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
      body: _questionIndex < questions.length
          ? Column(
              children: [
                Question(questions[_questionIndex]['questionText']),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ],
            )
          : Center(child: Text('done')),
    ));
  }
}
