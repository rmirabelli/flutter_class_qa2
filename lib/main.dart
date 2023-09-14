import 'package:flutter/material.dart';
import 'package:qa_session_2/answer.dart';
import 'package:qa_session_2/question_data.dart';

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
  int get questionIndex => _questionIndex;
  set questionIndex(int newValue) {
    if (newValue >= questions.length) {
      newValue = 0;
    }
    _questionIndex = newValue;
  }

  incrementQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                questions[questionIndex]['questionText'] as String,
              ),
              ...(questions[_questionIndex]['answers'] as List<String>).map((answerText) {
                return Answer(answerText, incrementQuestion);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
