import 'package:flutter/material.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your fav car ??',
      'What\'s your fav color ??',
      'What\'s your fav num ??'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lets take a look"),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text(questions.elementAt(0)),
              onPressed: () => print('A'),
            ),
            RaisedButton(
              child: Text(questions.elementAt(1)),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(questions[2]),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
