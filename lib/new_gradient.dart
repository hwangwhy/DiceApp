import 'package:first_app/dice_roll.dart';
import 'package:flutter/material.dart';

const startColor = Alignment.topLeft;
const endColor = Alignment.bottomRight;

class NewGradient extends StatelessWidget {
  const NewGradient(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startColor, end: endColor),
      ),
      child: const Center(child: DiceRoll()),
    );
  }
}
