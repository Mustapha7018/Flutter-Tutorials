import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/text_widget.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map((data) => Row(
                    children: [
                      Text(((data['question_index'] as int) + 1).toString()),
                      Expanded(
                        child: Column(
                          children: [
                            StyledText(data['question'] as String,
                                fontSize: 18, textAlign: TextAlign.left),
                            const SizedBox(
                              height: 5,
                            ),
                            StyledText(data['correct_answer'] as String, fontSize: 18, textAlign: TextAlign.left),
                            StyledText(data['user_answer'] as String, fontSize: 18, textAlign: TextAlign.left),
                          ],
                        ),
                      )
                    ],
                  ))
              .toList(),
        ),
      ),
    );
  }
}
