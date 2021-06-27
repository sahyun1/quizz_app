import 'package:flutter/material.dart';

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
  var questions = ['what is your name', 'what is your colour'];
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Text(questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer1'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer2'),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer3'),
            onPressed: answerQuestion,
          )
        ],
      ),
    ));
  }
}
