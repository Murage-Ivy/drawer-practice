import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Settings",
        style: TextStyle(
            color: const Color(0xFFf7a400),
            fontWeight: FontWeight.w600,
            fontSize: 25,
            fontFamily: GoogleFonts.outfit().fontFamily),
      )),
    );
  }
}
