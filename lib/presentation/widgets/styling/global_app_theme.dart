import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class GlobalAppTheme {
  static ColorScheme lightColorScheme = ColorScheme(
      surface: Colors.white,
      onSurface: HexColor('#090A0A'),
      primary: HexColor('#55ADD1'), // blue
      onPrimary: Colors.white,
      secondary: HexColor('#414141'), // dark gray
      onSecondary: Colors.white,
      tertiary: HexColor('#D9D9D9'), // light gray
      onTertiary: Colors.black,
      error: HexColor('#FF4747'),
      onError: Colors.white,
      brightness: Brightness.light,
      outlineVariant: HexColor('#949494'),
      outline: HexColor('#246BFD'));
}
