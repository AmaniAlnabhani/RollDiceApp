import 'package:flutter/material.dart';
import 'package:demo_app/gradient_container.dart';
void main() {
  // Ui element will display in screen
  runApp( const MaterialApp(
      home: Scaffold(
        ///backgroundColor: Color.fromARGB(255, 47, 5, 120),
        body: GradientContainer(colors: [Color.fromARGB(255, 30, 18, 49),
          Color.fromARGB(255, 56, 39, 91),
          Color.fromARGB(255, 116, 91, 157)]),
      ),
  ),
  );

}
