import 'package:flutter/material.dart';
import 'package:first_app/new_gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: NewGradient(Color.fromARGB(96, 123, 235, 147),
            Color.fromARGB(232, 88, 163, 233)),
      ),
    ),
  );
}
