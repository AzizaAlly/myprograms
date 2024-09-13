import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlugsScreen extends StatefulWidget {
  const SlugsScreen({super.key});

  @override
  State<SlugsScreen> createState() => _SlugsScreenState();
}

class _SlugsScreenState extends State<SlugsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
           children: [ 
            Image.asset("assets/food3.jpg" ,fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
