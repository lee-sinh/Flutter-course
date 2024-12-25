// TODO

import 'package:flutter/material.dart';
import 'package:myflutter/finalExam/models/course.dart';
import 'package:myflutter/finalExam/widgets/course_view.dart';

class CoursesView extends StatelessWidget {
  final List<Course> courses = [
    Course(name: 'HTML', scores: [StudentScore(score: 80, name: 'Messi')]),
    Course(name: 'JAVA', scores: []),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SCORE APP'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          final course = courses[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ListTile(
              title: Text(course.name, style: const TextStyle(fontSize: 18.0)),
              subtitle: course.scores.isNotEmpty
                  ? Text(
                      '${course.scores.length} scores\nAverage: ${course.getAverageScore()}',
                    )
                  : const Text('No score'),
              onTap: () {
                // Navigate to the Course Details View
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CourseView(course: course),
                  ),
                  
                );
              },
            ),
          );
        },
      ),
    );
  }
}


