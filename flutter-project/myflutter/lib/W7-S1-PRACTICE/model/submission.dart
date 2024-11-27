import 'package:myflutter/W7-S1-PRACTICE/model/quiz.dart';

class Answer{
  final String questionAnswer; //user choice

  Answer({required this.questionAnswer});

  bool isCorrect(String answer) {
    return true;
  }
}

class Submission {
  void addAnswer(Question question, String answer) {
    // Add answer to the submission
    // Example:
    // answers.add(new Answer(question.questionText + ": " + answer));
    // title.add(answer);
  }
  void getScore(String answer) {

  }
}