import 'package:flutter/material.dart';

class QuestionItem extends StatelessWidget {

  final String question;
  final String userAnswer;
  final String correctAnswer;

  const QuestionItem({
    required this.correctAnswer,
    required this.question,
    required this.userAnswer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          userAnswer,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 179, 205),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          correctAnswer,
          style: const TextStyle(
            color: Color.fromARGB(255, 166, 215, 255),
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
