import 'package:flutter/material.dart';
// import 'package:flutter_workspace/WEEK%206/W6-S1/EXERCISE-3/screen/temperature.dart';
// import 'package:flutter_workspace/WEEK%206/W6-S1/EXERCISE-3/screen/welcome.dart';
import 'package:myflutter/W6-S1-PRACTICE/EXERCISE-3/screen/temperature.dart';
import 'package:myflutter/W6-S1-PRACTICE/EXERCISE-3/screen/welcome.dart';
// import 'package:test1/W5-S2-List-Inputs/1%20-%20START%20CODE/EXERCISE-3/screen/welcome.dart;

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool _isClick = true;
  void currentScreen() {
    setState(() {
      _isClick = !_isClick;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 800),
              child: _isClick
                  ? Welcome(
                      currentScreen: currentScreen,
                    )
                  : Temperature(),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}