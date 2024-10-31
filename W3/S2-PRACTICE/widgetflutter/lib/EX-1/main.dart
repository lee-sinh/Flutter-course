import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyFirstScaffold(),
    )
  );
}

class MyFirstScaffold extends StatelessWidget {
  const MyFirstScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),

      body: const Center(child: Text('Hello, my name is Lee Sinh',
        style: TextStyle(
          color: Colors.orange,
          fontSize: 50
        ),)
        ),
    );
  }
}