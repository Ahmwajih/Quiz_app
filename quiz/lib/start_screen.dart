import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz2.png',
            width: 300,
          ),
          const SizedBox(height: 20), // Add some spacing
          const Text(
            'Welcome to the Quiz!',
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20), // Add some spacing
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const QuestionScreen()),
              );
            },
            icon: const Icon(Icons.play_arrow), // Changed to play icon
            label: const Text('Start'),
          ),
        ],
      ),
    );
  }
}

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}


class _QuestionScreenState extends State<QuestionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Question'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Question .....',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black, 
              ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                // Add code to handle 'True' answer
              },
              child: const Text('Text1'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add code to handle 'True' answer
              },
              child: const Text('Text2'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add code to handle 'True' answer
              },
              child: const Text('Text3'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add code to handle 'True' answer
              },
              child: const Text('Text4'),
            ),
          ],
        ),
      ),
    );
  }
}
