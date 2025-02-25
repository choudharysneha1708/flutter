import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/bg_img.png',
            color: const Color.fromARGB(160, 255, 255, 255),
            width: 300,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Are You Ready!!",
            style: TextStyle(
                color: Color.fromARGB(255, 116, 0, 240), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed:  switchScreen,
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                    color: Color.fromARGB(255, 116, 0, 249), fontSize: 18),
              ))
        ],
      ),
    );
  }
}
