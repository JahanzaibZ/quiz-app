import 'package:flutter/material.dart';

class AnswerButtons extends StatelessWidget {
  final String answer;
  final VoidCallback function;

  const AnswerButtons(this.function, this.answer, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: function,
        child: Text(answer),
      ),
    );
  }
}
