import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler) {}

  String get resultPhase {
    return 'yeah ' + resultScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            child: Text('Reset'),
            textColor: Colors.blueAccent,
            onPressed: resetHandler)
      ],
    ));
  }
}
