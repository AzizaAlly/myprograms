
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AzizaText extends StatelessWidget {
  String name;
  AzizaText({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.alice(
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.w600)),
    );
  }
}
