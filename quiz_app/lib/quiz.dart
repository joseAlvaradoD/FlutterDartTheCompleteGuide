import 'package:flutter/material.dart';
import 'package:quiz_app/data/data.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Map<String, Widget> widgets = {};
  var activeScreen = 'start-screen';

  _QuizState() {
    widgets['start-screen'] = StartScreen(switchScreen);
    widgets['questions-screen'] = QuestionsScreen(onSelectAnswer: chooseAnswer);
    widgets['result-screen'] = ResultScreen(
      chosenAnswers: selectedAnswers,
      onRestart: restartQuiz,
    );
  }

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? screenWidget = widgets[activeScreen];

    return Container(
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
      ),
      child: Center(
        child: screenWidget,
      ),
    );
  }
}
