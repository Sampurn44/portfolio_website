import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website/widgets/colors.dart';

class AppTheme {
  static TextStyle portfoliotextstyle(
      {FontWeight fontWeight = FontWeight.w200,
      Color color = AppColors.textcolor,
      double size = 28,
      bool underline = false,
      double height = 0.0,
      double letterSpacing = 0.0}) {
    return GoogleFonts.grapeNuts(
        fontWeight: fontWeight,
        color: color,
        fontSize: size,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
        height: height,
        letterSpacing: letterSpacing);
  }

  static TextStyle headertextstyle(
      {FontWeight fontWeight = FontWeight.w200,
      Color color = AppColors.textcolor,
      double size = 28,
      bool underline = false,
      double height = 0.0,
      double letterSpacing = 0.0}) {
    return GoogleFonts.roboto(
        fontWeight: fontWeight,
        color: color,
        fontSize: size,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
        height: height,
        letterSpacing: letterSpacing);
  }

  static TextStyle bodytextstyle(
      {FontWeight fontWeight = FontWeight.w200,
      Color color = AppColors.textcolor,
      double size = 28,
      bool underline = false,
      double height = 0.0,
      double letterSpacing = 0.0}) {
    return GoogleFonts.montserrat(
        fontWeight: fontWeight,
        color: color,
        fontSize: size,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
        height: height,
        letterSpacing: letterSpacing);
  }
}
