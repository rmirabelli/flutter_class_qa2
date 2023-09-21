import 'package:flutter/material.dart';
import 'package:qa_session_2/answer.dart';
import 'package:qa_session_2/question_data.dart';
import 'package:qa_session_2/quiz.dart';
import 'result.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _questionIndex >= questions.length
            ? Result(_totalScore)
            : Quiz(
                onAnswer: answerQuestion,
                questionIndex: _questionIndex,
              ),
      ),
    );
  }
}
