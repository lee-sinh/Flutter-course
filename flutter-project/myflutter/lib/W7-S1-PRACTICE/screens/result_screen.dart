import 'package:flutter/material.dart';
import 'package:myflutter/W7-S1-PRACTICE/model/quiz.dart';
import 'package:myflutter/W7-S1-PRACTICE/model/submission.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.submission, required this.quiz});
  final Submission submission;
  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "You got ${submission.getScore()} out of ${submission.answers.length}",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Loop through the questions
        ...quiz.questions.map((question) {
          String? userAnswer = submission.getAnswerFor(question);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  question.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Loop through the possible answers for each question
              ...question.possibleAnswers.map((answer) {
                bool isUserAnswer = answer == userAnswer;
                bool isCorrect = answer == question.goodAnswer;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Display the answer text
                    Text(
                      answer,
                      style: TextStyle(
                        color: isUserAnswer ? Colors.yellow : Colors.black,
                      ),
                    ),
                    // Display a tick icon for the correct answer
                    if (isCorrect)
                      const Icon(
                        Icons.check,  
                        color: Colors.green,
                        size: 18,
                      ),
                  ],
                );
              }),
              const SizedBox(height: 20),
            ],
          );
        }),
      ],
    );
  }
}