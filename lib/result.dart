import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(
    this.score, {
    super.key,
  });

  final int score;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Your score is $score'));
  }
}
