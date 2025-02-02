import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:Flutter_dice/dice_roller.dart';
//import 'package:Flutter_dice/styled_text.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;
var number = Int;
//Alignment? startAligment;

class GradintContainer extends StatelessWidget {
  const GradintContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAligment, end: endAligment),
        ),
        child: Center(
          child: DiceRoller(),
        ));
  }
}
