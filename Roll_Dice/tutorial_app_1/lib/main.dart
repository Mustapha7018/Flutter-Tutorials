import 'package:flutter/material.dart';
import 'package:tutorial_app_1/gradient_container.dart';

void main() {
  runApp(const TutorialApp());
}

class TutorialApp extends StatelessWidget {
  const TutorialApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(   
        body: GradientContainer([
            Color.fromARGB(255, 41, 21, 112),
            Color.fromARGB(255, 21, 43, 139),
            Color.fromARGB(255, 33, 89, 243),
          ]),
      ),
    );
  }
}