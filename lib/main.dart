import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(const [
            Color.fromARGB(255, 100, 38, 170),
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(110, 43, 3, 104),
          ]),
      ),
    ),
  );
}
