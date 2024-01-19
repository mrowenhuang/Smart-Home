import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const textColor = Color(0xffE6E6E6);
const color1 = Color(0xff507e90);
const color2 = Color(0xff8EBFD3);
const color3 = Color(0xffc2dfee);
const color4 = Color(0xffadb8bc);

// @ text style

TextStyle bigText = GoogleFonts.poppins(
  fontSize: 50,
  color: color1,
  fontWeight: FontWeight.bold,
);

TextStyle bigTextShadow = GoogleFonts.poppins(
  fontSize: 50,
  shadows: [
    const Shadow(
      blurRadius: 10,
      color: Colors.black45,
    )
  ],
  color: color1,
  fontWeight: FontWeight.bold,
);

TextStyle smallTextBold = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  letterSpacing: 3,
  wordSpacing: 6,
  color: color1,
);



TextStyle smallTextThinp1 = GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: color1,
);

TextStyle smallText = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w300,
);

TextStyle mediumTextSemiBold = GoogleFonts.poppins(
  fontSize: 28,
  fontWeight: FontWeight.w700,
  color: color2,
);


