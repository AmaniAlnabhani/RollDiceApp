import 'package:demo_app/styled_text.dart';
import 'package:flutter/material.dart';

import 'package:demo_app/dice_roller.dart';


const startAlignment=Alignment.topLeft;
const endAlignment=Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  //constracter
  //const GradientContainer({key}): super(key:key);
  //another way
  const  GradientContainer({super.key,required this.colors});
  final List<Color> colors;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors:  colors,
          begin: startAlignment,
          end:endAlignment ,
        ),
      ),
      child:  const Center(
        child:DiceRoller()),);
  }
}