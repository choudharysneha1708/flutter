import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

var imageAsset = 'assets/dice-1.svg';
var randomNumber = Random();
class DiceRoller extends StatefulWidget {
  
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  

  void rollDiceFunction() {
    setState(() {
     var number = randomNumber.nextInt(6) + 1;
      imageAsset = 'assets/dice-$number.svg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imageAsset,
          width: 200,
        ),
        TextButton(
            onPressed: rollDiceFunction,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text("Roll Dice!"))
      ],
    );
  }
}


