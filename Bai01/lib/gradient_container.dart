import 'package:bai01/roll_dice.dart';
import 'package:flutter/material.dart';
//import 'styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});
  // GradientContainer.purple({super.key})
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.greenAccent,
  //       color3 = Colors.deepPurple;
  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoll(),
      ),
    );
  }
}
