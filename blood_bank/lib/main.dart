import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  String name = "Sneha";
  int a = 12;
  int b = 89;
  int sum = add(a, b);
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 9, 37, 61),
        body: Center(
          child: Text(
            "Hello World ",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ),
    ),
  );
}

int add(num1, num2) {
  return num1 + num2;
}
