import 'package:flutter/material.dart';

class QuizQuestion {
  QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> getShuffledAnswer() {
    final shuffledList = List.of(answers); // Shuffle the answers
    shuffledList.shuffle();
    return shuffledList;
  }

  bool isCorrectAnswer(String selectedAnswer) {
    return selectedAnswer == answers[0];
  }
}
