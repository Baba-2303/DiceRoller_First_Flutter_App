import 'package:flutter/material.dart';
import 'package:first_flutter_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
        color1: const Color.fromARGB(255, 15, 0, 42),
        color2: const Color.fromARGB(255, 23, 11, 131),
      ),
    ),
  ));
}
