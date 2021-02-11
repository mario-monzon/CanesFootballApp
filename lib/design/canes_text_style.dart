import 'package:canes_football_app/design/canes_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CanesTextStyle {
  static final buttonLabelM = GoogleFonts.ubuntu(
      textStyle: TextStyle(
    color: CanesColor.defaultColor,
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
  ));

  static final buttonLabelL = GoogleFonts.ubuntu(
      textStyle: TextStyle(
    color: CanesColor.defaultColor,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  ));
}
