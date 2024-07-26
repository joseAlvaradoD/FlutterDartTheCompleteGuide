import 'package:flutter/material.dart';
import 'package:quiz_app/data/data.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

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

