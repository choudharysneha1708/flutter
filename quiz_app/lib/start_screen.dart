import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/bg_img.jpg',
            // color: const Color.fromARGB(150, 255, 255, 255),
            width: 500,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Hello Sneha How are you!!!",
            style: TextStyle(
                color: Color.fromARGB(255, 116, 0, 240), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: () {},
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
