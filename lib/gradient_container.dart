import 'package:flutter/material.dart';
import 'dice_roller.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  const GradientContainer(this.colors, {super.key});
  // also done like:
  // const GradientContainer({key}){super.key=key;};

  //        Concept of a second constructor
  // final Color color1;
  // final Color color2;
  // const GradientContainer.purple({super.key}):color1=Colors.deepPurple, color2=Colors.indigo;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(), 
        ),
    );
  }
}
