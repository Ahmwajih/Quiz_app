import 'package:flutter/material.dart';

import 'package:quiz/start_screen.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body:  Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color.fromARGB(255, 9, 172, 194),
                Color.fromARGB(255, 9, 179, 74),
                Color.fromARGB(255, 102, 168, 16),
              ],
            ),
          ),
          child: const StartScreen(),
        ),
        )
        )
        );
}
