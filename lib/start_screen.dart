import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assests/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 218, 211, 210),
          ),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter for better',
            style: TextStyle(
              color: Color.fromARGB(150, 212, 88, 88),
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
