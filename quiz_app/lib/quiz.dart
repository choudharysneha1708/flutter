import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  void switchScreen() {
    setState(() {
      screenHolder = 2;
      // activeScreen = const QuestionScreen();
    });
  }

  Widget? activeScreen;
  int screenHolder = 1;
  @override
  Widget build(BuildContext context) {
    activeScreen = StartScreen(switchScreen);
    if(screenHolder==2){
      activeScreen = const QuestionScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 245, 120, 162),
            Color.fromARGB(255, 195, 113, 140)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: activeScreen,
        ),
      ),
    );
  }
}
