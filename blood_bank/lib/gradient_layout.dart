import 'package:flutter/material.dart';

class GradientLayout extends StatelessWidget {
  // const GradientLayout({key1}) : super(key: key1);
  const GradientLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 230, 87, 16),
          Color.fromARGB(255, 193, 32, 67),
          Color.fromARGB(0, 0, 0, 0)
        ], begin: Alignment.topRight, end: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          "Hello World ",
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
