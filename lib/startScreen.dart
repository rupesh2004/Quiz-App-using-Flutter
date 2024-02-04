import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen(),{super.key});

  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/quizlogo.png',
              width: 200,
              height: 200,
              color: Color.fromARGB(243, 255, 255, 255),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
              onPressed: () {
                switchScreen();
              },
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromARGB(255, 2, 14, 247),
                  ),
                  fixedSize: const Size(200, 10)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Start Quiz',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_circle_right,
                    color: Colors.black,
                  )
                ],
              )),
        ]),
      ),
    );
  }
}
