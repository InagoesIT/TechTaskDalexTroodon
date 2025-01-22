import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle get montserrat24W700 => GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700));

  static TextStyle get montserrat16W700 => GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700));

  static TextStyle get montserrat18W700 => GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700));

  static TextStyle get montserrat16W500 => GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500));

  static TextStyle get montserrat12W400 => GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400));


  static TextStyle get montserrat10W400 => GoogleFonts.montserrat(
      textStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400));
}
