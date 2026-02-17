import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_life/core/utility/appcolor/appcolor.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle heading({
    double size = 20,
    FontWeight weight = FontWeight.w700,
    Color color = AppColor.textPrimary,
  }) {
    return GoogleFonts.poppins(
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: 1.25,
    );
  }

  static TextStyle body({
    double size = 14,
    FontWeight weight = FontWeight.w400,
    Color color = AppColor.textSecondary,
  }) {
    return GoogleFonts.poppins(
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: 1.4,
    );
  }
}
