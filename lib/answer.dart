import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(
    this.answerText,
    this.callback, {
    super.key,
  });

  final String answerText;
  final Function() callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: callback,
        child: Text(answerText),
      ),
    );
  }
}
