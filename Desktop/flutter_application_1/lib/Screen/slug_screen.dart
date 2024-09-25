import 'package:flutter/material.dart';

class SlugScreen extends StatefulWidget {
  const SlugScreen({super.key});

  @override
  State<SlugScreen> createState() => _SlugScreenState();
}

class _SlugScreenState extends State<SlugScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
          children: [
            Text("data")
          ],
        ),
      );
    
  }
}