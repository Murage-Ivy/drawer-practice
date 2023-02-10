import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        "Profile",
        style: TextStyle(
            color: const Color(0xFFf7a400),
            fontWeight: FontWeight.w600,
            fontSize: 25,
            fontFamily: GoogleFonts.outfit().fontFamily),
      )),
    );
  }
}
