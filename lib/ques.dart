import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String ques;
  Question(this.ques);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        ques,
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
    ));
  }
}
