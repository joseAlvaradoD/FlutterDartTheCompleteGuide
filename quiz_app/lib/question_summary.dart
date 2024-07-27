import 'package:flutter/material.dart';
import 'package:quiz_app/questions_summary/question_identifier.dart';
import 'package:quiz_app/questions_summary/question_item.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionSummary({required this.summaryData, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionIdentifier(
                    questionIndex: data['question_index'] as int,
                    isCorrectAnswer:
                        data['correct_answer'] == data['user_answer'],
                  ),
                  Expanded(
                    child: QuestionItem(
                      question: data['question'].toString(),
                      userAnswer: data['user_answer'].toString(),
                      correctAnswer: data['correct_answer'].toString(),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
