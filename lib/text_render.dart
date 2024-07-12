import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextRender extends StatelessWidget {
  TextRender(this.txt, {super.key});
  String txt;

  @override
  Widget build(context) {
    return Text(
      txt,
      style: const TextStyle(
          fontFamily: String.fromEnvironment('Times New Roman'),
          fontSize: 28,
          color: Colors.indigo),
    );
  }
}
