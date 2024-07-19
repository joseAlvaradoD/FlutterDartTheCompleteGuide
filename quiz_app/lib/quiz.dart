import 'package:flutter/material.dart';
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

  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  switchScreen(){
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
      ),
      child: Center(
        child: activeScreen,
      ),
    );
  }
}

//renderind conditional conten on flutter using..... 
//I do not know what I will use to achieve this, 
//but wait to see how I will resolve it.... 
//to be continued.........
//someday
//maybe 

