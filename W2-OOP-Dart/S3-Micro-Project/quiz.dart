import 'question.dart';
import 'participant.dart';

class Quiz {
  List<Question> questions = [];
  List<Participant> participants = [];

  void addQuestion(Question quest){
    questions.add(quest);
  }

  void addParticipant(Participant part){
    participants.add(part);
  }

  int getResult(Participant part){
    int score = 0;
    for(var quest in questions){
      if(part.answers[quest] == (quest as SingleChoiceQuestion).correctOption){
        score++;
      }
    }
    return score;
  }

  void displayResult(){
    for(var part in participants){
      print('${part.firstName} ${part.lastName}: ${getResult(part)} / ${questions.length}');
    }
  }
}