import 'package:flutter/material.dart';

void main() {
  String name = "Sneha";
  int a = 12;
  int b = 89;
  int sum = add(a, b);
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Hello World $sum $name"),
        ),
      ),
    ),
  );
}

int add(num1, num2) {
  return num1 + num2;
}
