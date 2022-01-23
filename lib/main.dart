import 'package:flutter/material.dart';

import './ques.dart';
import './ans.dart';

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
  void onPressed() {
    setState(() {
      questionIndex = questionIndex + 1;
      //answerIndex = answerIndex + 1;
    });
  }

  void reset() {
    setState(() {
      questionIndex = 0;
    });
  }

  List questions = [
    {
      'ques': 'What is your favorite color?',
      'ans': ['Red', 'Blue', 'Black', 'Green']
    },
    {
      'ques': 'Who is your favourite actor?',
      'ans': ['Ranveer Singh', 'Vicky Kaushal', 'Siddharth Malhotra']
    },
    {
      'ques': 'What sport do you like the most?',
      'ans': ['Badminton', 'Cricket', 'Basketball']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Quiz'),
            ),
            body: (questionIndex < questions.length)
                ? Column(
                    children: [
                      Question(questions[questionIndex]['ques']),
                      ...(questions[questionIndex]['ans']).map((answer) {
                        return Answer(onPressed, answer);
                      }).toList(),
                    ],
                  )
                : Center(
                    child: Column(children: [
                      const Text(
                        'Thanks for sharing!',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      TextButton(
                        onPressed: reset,
                        child: const Text('Reset Quiz'),
                      )
                    ]),
                  )));
  }
}
