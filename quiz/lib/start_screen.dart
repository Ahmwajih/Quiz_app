import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A237E),
              Color(0xFF3949AB),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz2.png',
                width: 300,
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to the Quiz!',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuestionScreen()),
                  );
                },
                icon: const Icon(Icons.play_arrow),
                label: const Text('Start'),
              ),
            ],
          ),
        ),
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
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    final currentQuestion = questions[currentQuestionIndex];
    if (currentQuestion.isCorrectAnswer(selectedAnswer)) {
      setState(() {
        // Move to the next question or reset if at the end
        if (currentQuestionIndex == questions.length - 1) {
          currentQuestionIndex = 0;
        } else {
          currentQuestionIndex++;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Question',
            style: TextStyle(fontSize: 24, color: Colors.white)),
        backgroundColor: const Color(0xFF1A237E),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A237E),
              Color(0xFF3949AB),
            ],
          ),
        ),
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  currentQuestion.text,
                  style: GoogleFonts.roboto(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                ...currentQuestion.getShuffledAnswer().map((item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: AnswerButton(
                      onTap: () {
                        answerQuestion(item); // Pass selected answer
                      },
                      answerText: item,
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
