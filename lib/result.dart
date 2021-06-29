import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  final int _totalScore;
  final Function _resetQuiz;

  Result(this._totalScore, this._resetQuiz);

  String get resultStr {
    String returnString;
    if (_totalScore < 50) {
      returnString = 'awesome: ' + _totalScore.toString();
    } else {
      returnString = 'bad: ' + _totalScore.toString();
    }
    return returnString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(resultStr,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34)),
        FlatButton(
          onPressed: _resetQuiz,
          child: Text('Reset'),
          textColor: Colors.red,
        )
      ],
    ));
  }
}
