import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';
import 'package:quizapp/startScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 51, 191, 222),
          title: const Text(
            'Quiz App',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 87, 246, 227),
                  Color.fromARGB(255, 85, 188, 240),
                ],
              ),
            ),
            child: activeScreen),
      ),
    );
  }
}
