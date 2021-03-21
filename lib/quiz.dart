import 'package:flutter/material.dart';
import 'question.dart';
import 'Answer.dart';

class Quiz extends StatelessWidget {
  final question;
  final questionindex;
  final answerquestion;

  Quiz(this.question, this.questionindex, this.answerquestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionindex]['questiontext']),
        ...(question[questionindex]['answers'] as List<Map<String, Object>>)
            .map((s) {
          return Answer(s['text'], () => answerquestion(s['score']));
        }).toList(),
      ],
    );
  }
}
