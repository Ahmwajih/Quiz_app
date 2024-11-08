import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 9, 172, 194),
                Color.fromARGB(255, 9, 179, 74),
                Color.fromARGB(255, 102, 168, 16),
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
