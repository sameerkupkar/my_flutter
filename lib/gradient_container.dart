import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_flutter/styled_text.dart';

const startAligment = Alignment.topLeft;
const endAligment = Alignment.bottomRight;
var number = Int;
//Alignment? startAligment;

class GradintContainer extends StatelessWidget {
  const GradintContainer({super.key, required this.colors});

  final List<Color> colors;

  void rollDice() {
    print('sameer');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAligment, end: endAligment),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assests/images/WhatsApp.png'),
          TextButton(
              onPressed: rollDice, child: const Text("Click to Roll Dice"))
        ],
      )),
    );
  }
}
