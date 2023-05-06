import 'package:flutter/material.dart';
import 'dart:math';
final randomziner=Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  var currentRoll=2;

  void rollDice() {

    setState(() {
      currentRoll=randomziner.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 60,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll dice'),
        )
      ],
    );
  }
}
