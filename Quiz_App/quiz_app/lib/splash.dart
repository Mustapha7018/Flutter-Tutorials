import 'package:flutter/material.dart';
import 'package:quiz_app/text_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'images/quiz-logo.png',
            width: 300,
          ),
          const SizedBox(height: 100),
          const StyledText('Learn Flutter the fun way!', fontSize: 22),
          const SizedBox(height: 100),
          OutlinedButton.icon(
            label: const StyledText('Start Quiz', fontSize: 20),
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
            onPressed: () {
              startQuiz();
            },
          ),
        ],
      ),
    );
  }
}
