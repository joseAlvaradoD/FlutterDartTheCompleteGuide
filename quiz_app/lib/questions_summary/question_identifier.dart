import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final int questionIndex;
  final bool isCorrectAnswer;

  const QuestionIdentifier(
      {required this.questionIndex, required this.isCorrectAnswer, super.key});

  @override
  Widget build(BuildContext context) {

    final questionNumber = questionIndex + 1;
    
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 166, 215, 255)
            : const Color.fromARGB(255, 255, 179, 205),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
