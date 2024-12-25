// // TODO

class StudentScore {
  final double score;
  final String name;

  StudentScore({required this.score, required this.name});
}

class Course {
  final String name;
  final List<StudentScore> scores;
  Course({required this.name, required this.scores});

  double getAverageScore() {
    double totalScore = 0;
    for (var student in scores) {
      totalScore += student.score;
    }

    return totalScore / scores.length;
  }
}

