import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHander;
  final String answerText;
  Answer(this.selectHander, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.red,
        onPressed: selectHander,
      ),
    );
  }
}
