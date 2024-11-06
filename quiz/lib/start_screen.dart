import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});


  @override
  Widget build(context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Welcome to the Quiz!',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Add code to navigate to the next screen
            },
            child: const Text('Start'),
          ),
        ],
      ),
    );
  }
}
