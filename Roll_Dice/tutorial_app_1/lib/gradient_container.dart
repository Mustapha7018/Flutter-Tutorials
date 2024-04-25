import 'package:flutter/material.dart';
import 'package:tutorial_app_1/roll_dice.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors, {super.key});

  final List<Color> gradientColors;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

      ),

      child: const Center(
        child: RollDice(),
      ),
    );
  }
}
