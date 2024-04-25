import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tutorial_app_1/styled_text.dart';


class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {

  var currDice = 2;

  void rollDice() {
    setState(() {
      currDice = 1 + Random().nextInt(6);    
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            StyledText('You rolled $currDice!'),

            const SizedBox(height: 200),

            Image.asset(
              'assets/dice-$currDice.png',
              width: 200,
            ),

            Container(
              margin: const EdgeInsets.only(top: 100),
              child: TextButton(
                onPressed: rollDice,
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                ),
                
                child: const StyledText('Roll Dice'),
              ),
            )
          ],
        );
  }
}