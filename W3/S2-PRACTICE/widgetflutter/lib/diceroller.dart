import 'package:flutter/material.dart';
import 'dart:math';

const String diceImage2 = 'assets/images/dice-2.png';
const String diceImage4 = 'assets/images/dice-4.png';
const String diceImage1 = 'assets/images/dice-1.png';
const String diceImage3 = 'assets/images/dice-3.png';
const String diceImage5 = 'assets/images/dice-5.png';
const String diceImage6 = 'assets/images/dice-6.png';


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  List<String> diceImages = [
    diceImage1,
    diceImage2,
    diceImage3,
    diceImage4,
    diceImage5,
    diceImage6,
  ];
String activeDiceImage = diceImage2;

  void rollDice() {
     //  Display the dice 4 !
    setState(() {
      int randomIndex = Random().nextInt(diceImages.length);
      activeDiceImage = diceImages[randomIndex];
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          child: Image.asset(activeDiceImage,width: 200,),
          onTap: () {
            rollDice();
            },
        ),

        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

void main() => runApp(const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(child: DiceRoller()),
      ),
    ));