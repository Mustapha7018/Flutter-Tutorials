import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final VoidCallback onClick;

  const AnswerButton(
      {super.key, required this.answerText, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
        onPressed: onClick,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 15,
          ),
        ),
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
          softWrap: true,
          // maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
