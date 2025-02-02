import 'package:flutter/material.dart';
import 'package:my_flutter/gradient_container.dart';

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
