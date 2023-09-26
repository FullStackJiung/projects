import 'package:flutter/material.dart';
import 'models.dart';

class QuizScreen extends StatefulWidget {
  final Function(String) onCorrectAnswer;

  QuizScreen(this.onCorrectAnswer);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuiz = 0;

  void _answerQuestion(int index, BuildContext context) {
    if (index == quizzes[_currentQuiz].answerIndex) {
      widget.onCorrectAnswer(quizzes[_currentQuiz].rewardPageContent);

      if (_currentQuiz + 1 < quizzes.length) {
        setState(() {
          _currentQuiz++;
        });
      } else {
        // 마지막 퀴즈를 답했을 때의 로직
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('정답이 아닙니다!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final quiz = quizzes[_currentQuiz];
    return Scaffold(
      appBar: AppBar(title: Text('Bible Quiz')),
      body: Column(
        children: [
          Text(quiz.question),
          ...List.generate(quiz.options.length, (index) {
            return ElevatedButton(
              onPressed: () => _answerQuestion(index, context),
              child: Text(quiz.options[index]),
            );
          }),
        ],
      ),
    );
  }
}
