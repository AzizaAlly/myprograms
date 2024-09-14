
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AzizaText extends StatelessWidget {
  String name;
  double? size;
  AzizaText({super.key, required this.name, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.alice(
          textStyle: TextStyle(
              color: Colors.white, fontSize: size ?? 45, fontWeight: FontWeight.w600)),
    );
  }
}
