import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget{

  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionState();
  }
}

class _QuestionState extends State<QuestionsScreen>{

  @override
  Widget build(BuildContext context) {
    return const Text("QuestionsScreen");
  }
}