import 'package:flutter/material.dart';

import './quiz_widget.dart';
import './results_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questionsList = [
    {
      "question": "What is your favourite color?",
      "answer": [
        {"object": "Red", "score": 10},
        {"object": "Green", "score": 5},
        {"object": "White", "score": 3},
        {"object": "Black", "score": 1},
      ],
    },
    {
      "question": "Which fruit you hate the most among these?",
      "answer": [
        {"object": "Apple", "score": 10},
        {"object": "Mango", "score": 5},
        {"object": "Strawberry", "score": 3},
        {"object": "None", "score": 1},
      ],
    },
    {
      "question": "Which vegetable you hate the most among these?",
      "answer": [
        {"object": "Potato", "score": 10},
        {"object": "Onion", "score": 5},
        {"object": "Tomato", "score": 3},
        {"object": "None", "score": 1},
      ],
    },
  ];

  var _questionCounter = 0;
  var _totalScore = 0;

  void _quizResetAction() {
    setState(() {
      _questionCounter = 0;
      _totalScore = 0;
    });
  }

  void _quizAnswerAction(int score) {
    _totalScore += score;

    setState(() {
      _questionCounter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MyApp"),
        ),
        body: _questionCounter < _questionsList.length
            ? Quiz(
                _questionsList,
                _questionCounter,
                _quizAnswerAction,
              )
            : Results(_totalScore, _quizResetAction),
      ),
    );
  }
}
