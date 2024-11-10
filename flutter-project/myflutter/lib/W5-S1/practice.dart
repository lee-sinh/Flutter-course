import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 100),
              Container(
                height: 200,
                color: Colors.blue,
              ),
            
            Container(
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      // height: 100,
                    ),
                  ),
                  Container(
                    width: 100,
                    color: Colors.pink,
                    // height: 100,
                  ),
                ],
              ),
            ),
            
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    color: Colors.yellow,
                    // height: 100,
                  ),
                  Container(
                    width: 100,
                    color: Colors.yellow,
                    // height: 100,
                  ),
                  Container(
                    width: 100,
                    color: Colors.yellow,
                    // height: 100,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
              child: Container(
                color: Colors.pink,
              ),
            ),

          ],
        ),
      ),
    ),
  );
}
