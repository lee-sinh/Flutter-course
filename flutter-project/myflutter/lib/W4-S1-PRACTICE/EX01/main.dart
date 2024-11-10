import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text('My Hobbies'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(60.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HobbyCard(
              title: 'Travelling',
              icon: Icons.travel_explore,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            HobbyCard(
              title: 'Skating',
              icon: Icons.skateboarding,
              color: Colors.blueGrey,
            ),
          ],
        ),
      ),
    ),
  ));
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color; //optional

  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: color ?? Colors.blue,
      ),
      padding: const EdgeInsets.all(30.0),            
      child: Center(               
        child: Row(                 
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 20.0), 
            Text(
              title,
              style: const TextStyle(fontSize: 22.0, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
