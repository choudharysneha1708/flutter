import 'package:dice_roll_app/dice_roller.dart';
import 'package:flutter/material.dart';


class DiceRoll extends StatelessWidget {
 
  DiceRoll({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          // Color.fromARGB(255, 230, 87, 16),
          Color.fromARGB(255, 193, 32, 67),
          Color.fromARGB(255, 0, 0, 0)
        ], begin: Alignment.topRight, end: Alignment.bottomRight),
      ),
      child:const Center(
          child: DiceRoller()
    ),);
  }
}
