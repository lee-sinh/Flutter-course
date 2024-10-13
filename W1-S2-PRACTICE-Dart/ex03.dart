void main(){
  List<int> scores = [45, 78, 62, 49, 85, 33, 90, 50];

  var passedScore = scores.where((score) => score >= 50);
  print(passedScore.toList());
  
  var amountOfStu = passedScore.length;
  print('$amountOfStu Students passed');
}

