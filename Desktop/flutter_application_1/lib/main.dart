import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/onboarding_screen.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),);
  }
}