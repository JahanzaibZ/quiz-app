import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String question;

  const QuestionText({required this.question, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      child: Text(
        question,
        style: const TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
