import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenText extends StatelessWidget {

      final String name;
      final double size;
      final double weight;
      late Color color;
   ScreenText( {super.key,required this.name, required this.size,required this.weight, required
  this.color});
 
  @override
  Widget build(BuildContext context) {
    return Text(
     name,
    style: TextStyle(fontSize: size,fontWeight:FontWeight.w600,color: color),
    );
  }
}