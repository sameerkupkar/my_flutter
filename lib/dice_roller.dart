import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeImg = 'assests/images/dice_1.png';
  int duplicate = 0;

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    duplicate = diceRoll;
    if (duplicate == diceRoll) {
      diceRoll = Random().nextInt(6) + 1;
    }
    setState(() {
      activeImg = 'assests/images/dice_$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(activeImg, width: 100, height: 100, fit: BoxFit.fitHeight),
      TextButton(onPressed: rollDice, child: const Text("Click to Roll Dice"))
    ]);
  }
}
