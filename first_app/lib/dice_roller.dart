import 'dart:math';

import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

class DiceRoller extends StatefulWidget {
  
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final _randomizer = Random();
  var _currentDiceRoll = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$_currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          child: const StyledText("Roll Dice"),
        ),
      ],
    );
  }

  rollDice() {
    setState(() {
      _currentDiceRoll = _randomizer.nextInt(6) + 1;
    });
  }
}
