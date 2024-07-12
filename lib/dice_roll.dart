import 'dart:math';

import 'package:flutter/material.dart';
import 'package:first_app/text_render.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});
  @override
  State<DiceRoll> createState() {
    return DiceRollState();
  }
}

class DiceRollState extends State<DiceRoll> {
  var diceImg = 'assets/img/dice-1.png';
  var currentDice = Random();
  // ignore: non_constant_identifier_names
  void RollDice() {
    final diceRoll = currentDice.nextInt(6) + 1;
    setState(() {
      diceImg = 'assets/img/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceImg,
          width: 200,
        ),
        TextButton(
          onPressed: RollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.cyanAccent),
          child: TextRender('Roll it!'),
        )
      ],
    );
  }
}
