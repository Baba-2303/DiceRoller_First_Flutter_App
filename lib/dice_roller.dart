import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
} 

class _DiceRollerState extends State<DiceRoller>{
  int currentDiceNum = 2;

  void rollDice() {
    setState((){
      currentDiceNum = randomizer.nextInt(6)+1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentDiceNum.png',
              width: 200,
            ),
            const SizedBox(height: 20.0,),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20.0),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28.0,
                ),
              ),
              child: const Text("Roll A Dice!"),
            ),
          ],
        );
  }
}