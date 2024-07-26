import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/data.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectAnswer;

  const QuestionsScreen({required this.onSelectAnswer, super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final QuizQuestion currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.robotoMono(
                color: const Color.fromARGB(255, 211, 199, 226),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffleAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onTap: () => answerQuestion(answer),
              );
            }),
          ],
        ),
      ),
    );
  }
}
