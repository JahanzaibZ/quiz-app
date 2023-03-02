import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final VoidCallback quizResetAction;

  const Results(this.resultScore, this.quizResetAction, {super.key});

  String get resultText {
    String resultString;
    if (resultScore <= 8) {
      resultString = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultString = "You are acceptable";
    } else if (resultScore <= 18) {
      resultString = "You are ... strange!";
    } else {
      resultString = "You are Bad";
    }

    return resultString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultText,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: quizResetAction,
            child: const Text(
              "Retry Quiz",
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
