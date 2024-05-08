import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
