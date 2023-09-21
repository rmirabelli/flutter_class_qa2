import 'package:flutter/material.dart';
import 'question_data.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    required this.onAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final Function(int value) onAnswer;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, dynamic>>).map((answerMap) {
            return Answer(
              answerMap['text'] as String,
              () {
                onAnswer(answerMap['score'] as int);
              },
            );
          }).toList(),
        ],
      ),
    );
  }
}
