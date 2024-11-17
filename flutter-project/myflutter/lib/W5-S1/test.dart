// import 'package:flutter/material.dart';

// void main() {
 

//   runApp(
//     MaterialApp(
//         home: Scaffold(
//           body: SingleChildScrollView(
//             child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(color: Colors.green, height: 200),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(color: Colors.blue, height: 200),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(color: Colors.red, height: 200),
//               )
//             ],
//                     ),
//           ),
//       )),
//   );
// }

import 'package:flutter/material.dart';
// import 'ex_4_bonus.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 56, 201, 63),
        appBar: AppBar(
          title: Text(
            'Progress Bar',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[600],
          elevation: 4,
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: const [
              ProgressBarWiget(
                title: "Flutter",
              ),
              ProgressBarWiget(
                title: "Database",
              ),
              ProgressBarWiget(
                title: "Score",
              ),
              ProgressBarWiget(
                title: "Skills",
              ),
              ProgressBarWiget(
                title: "Run",
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ProgressBarWiget extends StatefulWidget {
  final String title;
  const ProgressBarWiget({super.key, required this.title});

  @override
  State<ProgressBarWiget> createState() => _ProgressBarWiget(title);
}

class _ProgressBarWiget extends State<ProgressBarWiget> {
  double _progress = 0;
  Color? _progressColor = Colors.blue[100];
  String title;
  _ProgressBarWiget(this.title);

  void _incrementProgress() {
    setState(() {
      if (_progress < 10) {
        _progress++;
        switch (_progress) {
          case 1:
            _progressColor = Colors.blue[100];
            break;
          case 2:
            _progressColor = Colors.blue[100];
            break;
          case 3:
            _progressColor = Colors.blue[200];
            break;
          case 4:
            _progressColor = Colors.blue[300];
            break;
          case 5:
            _progressColor = Colors.blue[400];
            break;
          case 6:
            _progressColor = Colors.blue[500];
            break;
          case 7:
            _progressColor = Colors.blue[600];
            break;
          case 8:
            _progressColor = Colors.blue[700];
            break;
          case 9:
            _progressColor = Colors.blue[800];
            break;
          case 10:
            _progressColor = Colors.blue[900];
            break;
          default:
            _progressColor = Colors.blue[100];
        }
      }
    });
  }

  void _decrementProgress() {
    setState(() {
      if (_progress > 0) {
        _progress--;
        switch (_progress) {
          case 1:
            _progressColor = Colors.blue[100];
            break;
          case 2:
            _progressColor = Colors.blue[100];
            break;
          case 3:
            _progressColor = Colors.blue[200];
            break;
          case 4:
            _progressColor = Colors.blue[300];
            break;
          case 5:
            _progressColor = Colors.blue[400];
            break;
          case 6:
            _progressColor = Colors.blue[500];
            break;
          case 7:
            _progressColor = Colors.blue[600];
            break;
          case 8:
            _progressColor = Colors.blue[700];
            break;
          case 9:
            _progressColor = Colors.blue[800];
            break;
          case 10:
            _progressColor = Colors.blue[900];
            break;
          default:
            _progressColor = Colors.blue[100];
        }
      }
    });
  }

  void sliderProgress(double index) {
    setState(() {
      _progress = index;
      switch (index.round()) {
        case 1:
          _progressColor = Colors.blue[100];
          break;
        case 2:
          _progressColor = Colors.blue[100];
          break;
        case 3:
          _progressColor = Colors.blue[200];
          break;
        case 4:
          _progressColor = Colors.blue[300];
          break;
        case 5:
          _progressColor = Colors.blue[400];
          break;
        case 6:
          _progressColor = Colors.blue[500];
          break;
        case 7:
          _progressColor = Colors.blue[600];
          break;
        case 8:
          _progressColor = Colors.blue[700];
          break;
        case 9:
          _progressColor = Colors.blue[800];
          break;
        case 10:
          _progressColor = Colors.blue[900];
          break;
        default:
          _progressColor = Colors.blue[100];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: FittedBox(
        child: Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.only(top: 20, bottom: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 3)]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: _decrementProgress,
                      icon: Icon(Icons.keyboard_arrow_down),
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: IconButton(
                        onPressed: _incrementProgress,
                        icon: Icon(Icons.keyboard_arrow_up),
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Score Rate: ${_progress.round().toString()}",
                  style: TextStyle(
                      color: Colors.blue[900],
                      fontSize: 16,
                      fontWeight: FontWeight.w200),
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  Container(
                    width: 40 * _progress,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(),
                        color: _progressColor),
                  ),
                ],
              ),
              Slider(
                  activeColor: Colors.blue[900],
                  inactiveColor: Colors.black,
                  value: _progress,
                  min: 0,
                  max: 10,
                  label: _progress.round().toString(),
                  onChanged: (double value) {
                    sliderProgress(value);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
