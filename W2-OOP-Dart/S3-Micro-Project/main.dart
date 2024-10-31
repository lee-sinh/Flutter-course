import 'dart:io';
import 'participant.dart';
import 'question.dart';
import 'quiz.dart';


void main() {
  //Create quiz
  Quiz quiz = Quiz();

  //Add questions
  quiz.addQuestion(SingleChoiceQuestion('What is the framework of Dart?', ['Laravel', 'Flutter', 'React', 'Rails'], 'Flutter'));
  quiz.addQuestion(SingleChoiceQuestion('What is 2 + 2?', ['3', '4', '5', '6'], '4'));
  quiz.addQuestion(SingleChoiceQuestion('What is the capital city of Cambodia?', ['Bangkok', 'Hanoi', 'Phnom Penh', 'Beijing'], 'Phnom Penh'));

  while(true){
    print("Welcome to Quiz game!\n");
    print("Quiz Menu: \n");
    print("1. Start Quiz");
    print("2. Exit");

    print("Choose a number: ");

    String? choice = stdin.readLineSync();

    if(choice == '1'){
    //Create participant
    print("Enter your first name:");
    String firstName = stdin.readLineSync() ?? "Anonymous";
    print("Enter your last name:");
    String lastName = stdin.readLineSync() ?? "Participant";
    Participant participant = Participant(firstName, lastName);

    //Add participant
    quiz.addParticipant(participant);

    print("Starting the quiz...\n");
    for (var quest in quiz.questions) {
      print(quest.title);
      for(int i = 0; i < quest.options.length; i++){
        print("${i+1}. ${quest.options[i]}");
      }
      //Get participant answer
      print("Choose the only one correct answer:");
      String? answerIndex = stdin.readLineSync();

      if(answerIndex != null && int.tryParse(answerIndex) != null){
        int answerInt = int.parse(answerIndex) - 1;
        if(answerInt>= 0 && answerInt < quest.options.length){
          participant.answerQuestion(quest, quest.options[answerInt]);
        } else{
          print("Invalid choice! Skipping question...");
        }
      }
      else{
        print("Invalid choice! Skipping question...");
      }
    }
    //display results
    print("Quiz completed!\n");
    print("Result: ");
    quiz.displayResult();
    break;

    } else if (choice == '2'){
      print("Goodbye!");
      break;
    }
    else{
      print("Invalid choice. Please try again.\n");
      break;
    }
  }
}