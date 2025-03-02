import 'package:Flutter_dice/data/questions.dart';
import 'package:Flutter_dice/questions_summary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key,
      required this.chooseAnswers,
      required this.onSelectRestartQuiz});

  final void Function() onSelectRestartQuiz;

  final List<String> chooseAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summery = [];

    for (var i = 0; i < chooseAnswers.length; i++) {
      summery.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chooseAnswers[i]
        },
      );
    }

    return summery;
  }

  @override
  Widget build(BuildContext context) {
    final sunmerryData = getSummaryData();

    final numTotalQuestions = questions.length;

    final numCorrectQuestion = sunmerryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answerd $numCorrectQuestion out of $numTotalQuestions Questions corretcly",
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(sunmerryData),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: onSelectRestartQuiz, child: Text('ReSatart Quiz!')),
          ],
        ),
      ),
    );
  }
}
