import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
  return _DicRollerState();
  }
}
class _DicRollerState extends State<DiceRoller>{

  var currentDiceRoll =2;
  rollDice(){

    setState(() {
     currentDiceRoll=randomizer.nextInt(6)+1;// between 1 to 6

    });



  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      mainAxisSize: MainAxisSize.min,
      children:[
        Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],

    );
  }
}