import 'package:flutter/material.dart';
import 'package:Flutter_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradintContainer(
          colors: [Colors.black, Colors.white],
        ),
      ),
    ),
  );
}
