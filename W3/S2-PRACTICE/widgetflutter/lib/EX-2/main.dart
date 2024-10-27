import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyContainer( ),
  ));
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      color: Colors.blue[300],
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: const Center(
          child: Text('CADT STUDENTS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40
          ),)),
      ),
    );
  }
}
