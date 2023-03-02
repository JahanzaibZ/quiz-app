import 'package:flutter/material.dart';

import './question_widget.dart';
import './answer_widget.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsList;
  final int questionCounter;
  final Function quizAnswerAction;

  const Quiz(this.questionsList, this.questionCounter, this.quizAnswerAction,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionText(
          question: questionsList[questionCounter]["question"] as String,
        ),
        ...(questionsList[questionCounter]["answer"]
                as List<Map<String, Object>>)
            .map((answer) {
          return AnswerButtons(() => quizAnswerAction(answer["score"] as int),
              answer["object"] as String);
        }).toList()
      ],
    );
  }
}
