import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(questions[questionIndex]),
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList()
        // ElevatedButton(
        //   child: Text('Answer 1'),
        //   onPressed:
        //       answerQuestion, // name of function instead of the result
        // ),
        // ElevatedButton(
        //   child: Text('Answer 2'),
        //   onPressed: answerQuestion,
        //   // onPressed: () => print("Answer 2 chosen"),
        // ),
        // ElevatedButton(
        //   child: Text('Answer 3'),
        //   onPressed: answerQuestion,
        //   // onPressed: () {
        //   //   print("Answer 3 chosen");
        //   // },
        // ),
      ],
    );
  }
}
