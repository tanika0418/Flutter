import 'package:flutter/material.dart';

import './ques.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var answerIndex = 0;
  void onPressed() {
    setState(() {
      questionIndex = questionIndex + 1;
      answerIndex = answerIndex + 1;
    });
  }

  List<String> questions = [
    'What is your favorite color?',
    'Who is your favourite actor?',
    'What sport do you like the most?'
  ];

  List answers = [
    ['Red', 'Blue', 'Black'],
    ['Ranveer Singh', 'Vicky Kaushal', 'Siddharth Malhotra'],
    ['Badminton', 'Cricket', 'Basketball']
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            ElevatedButton(
                onPressed: onPressed, child: Text(answers[answerIndex][0])),
            ElevatedButton(
                onPressed: onPressed, child: Text(answers[answerIndex][1])),
            ElevatedButton(
                onPressed: onPressed, child: Text(answers[answerIndex][2])),
          ],
        ),
      ),
    );
  }
}
