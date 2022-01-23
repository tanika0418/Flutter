import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback indexchange;
  final String ans;
  Answer(this.indexchange, this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(onPressed: indexchange, child: Text(ans)),
    );
  }
}
