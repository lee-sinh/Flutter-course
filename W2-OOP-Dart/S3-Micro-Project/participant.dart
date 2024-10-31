import 'question.dart';
import 'quiz.dart';

class Participant {
  String firstName;
  String lastName;
  Map<Question, String> answers = {};

  Participant(this.firstName, this.lastName);

  void answerQuestion(Question quest, String answer){
    answers[quest] = answer;
  }

  int getScore(Quiz quiz){
    return quiz.getResult(this);
  }
}