import 'package:canes_football_app/design/canes_color.dart';
import 'package:canes_football_app/design/canes_spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CanesTextStyle {
  static final boldM = GoogleFonts.ubuntu(
      textStyle: TextStyle(
    color: CanesColor.defaultColor,
    fontSize: CanesSpacing.spacing50,
    fontWeight: FontWeight.bold,
  ));

  static final boldL = GoogleFonts.ubuntu(
      textStyle: TextStyle(
    color: CanesColor.defaultColor,
    fontSize: CanesSpacing.spacing75,
    fontWeight: FontWeight.bold,
  ));

  static final buttonLabelM = GoogleFonts.ubuntu(
      textStyle: TextStyle(
    color: CanesColor.defaultColor,
    fontSize: CanesSpacing.spacing50,
    fontWeight: FontWeight.bold,
  ));

  static final buttonLabelL = GoogleFonts.ubuntu(
      textStyle: TextStyle(
    color: CanesColor.defaultColor,
    fontSize: CanesSpacing.spacing75,
    fontWeight: FontWeight.bold,
  ));
}
