import 'package:demo_app/styled_text.dart';
import 'package:flutter/material.dart';


const startAlignment=Alignment.topLeft;
const endAlignment=Alignment.bottomRight;

class GradientContainer extends StatefulWidget{
  //constracter
  //const GradientContainer({key}): super(key:key);
  //another way
   GradientContainer({super.key,required this.colors});
  final List<Color> colors;
  var activeDiceImage='assets/images/dice-2.png';
   rollDice(){
     var activeDiceImage='assets/images/dice-4.png';
     print('changing image');

  }

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
      child:  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
            Image.asset(
            activeDiceImage,
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

    ),),);
  }
}