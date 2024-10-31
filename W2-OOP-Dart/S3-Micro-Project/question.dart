class Question {
  String title;
  List<String> options;

  Question(this.title, this.options); 
} 

class SingleChoiceQuestion extends Question {
  String correctOption;

  SingleChoiceQuestion(String title, List<String> options, this.correctOption): super(title, options); 

  bool isCorrect(String answer) {
    return answer == correctOption;
  }
}