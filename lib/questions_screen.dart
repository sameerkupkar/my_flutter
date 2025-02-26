import 'package:Flutter_dice/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:Flutter_dice/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 212, 200, 218),
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffleAnsewer().map((answer) {
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  });
            })
          ],
        ),
      ),
    );
  }
}
