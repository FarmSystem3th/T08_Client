import 'package:flutter/material.dart';

abstract class ColorSystem {
  /// Transparent Color
  static const Color transparent = Colors.transparent;

  /// White Color
  static const Color white = Color(0xFFFFFFFF);

  /// Black Color
  static const Color black = Color(0xFF151515);

  /// bottom navigation notification color
  static const MaterialColor bottomNaviagation = MaterialColor(
    _primaryValue,
    <int, Color>{
      100: Color(0xFF589CF6),
      900: Color(0xFFD9D9D9),
    },
  );

  /// Primary Color
  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      900: Color(0xFF005D5E),
      800: Color(0xFF007268),
      700: Color(0xFF008D73),
      600: Color(0xFF00A978),
      500: Color(0xFFF2C84B),
      400: Color(0xFF37DC8C),
      300: Color(0xFF5FED9A),
      200: Color(0xFF95F9B5),
      100: Color(0xFFC9FCD4),
      50: Color(0xFFF1FFF4),
    },
  );
  static const int _primaryValue = 0xFF00C579;

  /// Secondary Color
  static const MaterialColor secondary = MaterialColor(
    _secondaryValue,
    <int, Color>{
      900: Color(0xFF225905),
      800: Color(0xFF2F6B08),
      700: Color(0xFF42850D),
      600: Color(0xFF589F13),
      500: Color(0xFF70BA1B),
      400: Color(0xFF9CD54C),
      300: Color(0xFFBDEA72),
      200: Color(0xFFDCF8A3),
      100: Color(0xFFEFFBD0),
      50: Color(0xFFF8FFE6),
    },
  );
  static const int _secondaryValue = 0xFF70BA1B;

  /// Neutral Color
  static MaterialColor neutral = const MaterialColor(
    _neutralValue,
    <int, Color>{
      900: Color(0xFF1C1C4F),
      800: Color(0xFF2E2E5F),
      700: Color(0xFF494976),
      600: Color(0xFF6A6A8D),
      500: Color(0xFF9292A5),
      400: Color(0xFFB7B7C9),
      300: Color(0xFFD4D4E3),
      200: Color(0xFFEAEAF6),
      100: Color(0xFFF5F5FF),
      50: Color(0xFFFAFAFF),
    },
  );
  static const int _neutralValue = 0xFF9292A5;

  /// Red Color
  static const MaterialColor red = MaterialColor(
    _redValue,
    <int, Color>{
      900: Color(0xFF7A082D),
      800: Color(0xFF930D2E),
      700: Color(0xFFB7152F),
      600: Color(0xFFDB1F2C),
      500: Color(0xFFFF2E2B),
      400: Color(0xFFFF6F60),
      300: Color(0xFFFF977F),
      200: Color(0xFFFFE3D4),
      100: Color(0xFFFFD5D5),
      50: Color(0xFFFFEFE6),
    },
  );
  static const int _redValue = 0xFFFF2E2B;

  /// Yellow Color
  static const MaterialColor yellow = MaterialColor(
    _yellowValue,
    <int, Color>{
      900: Color(0xFF764400),
      800: Color(0xFF8F5600),
      700: Color(0xFFB17101),
      600: Color(0xFFD48E01),
      500: Color(0xFFF7AD02),
      400: Color(0xFFFAC740),
      300: Color(0xFFFCD866),
      200: Color(0xFFFEE999),
      100: Color(0xFFFEF5CC),
      50: Color(0xFFFFFAE5),
    },
  );
  static const int _yellowValue = 0xFFF7AD02;

  /// Blue Color
  static const MaterialColor blue = MaterialColor(
    _blueValue,
    <int, Color>{
      900: Color(0xFF102670),
      800: Color(0xFF1C3988),
      700: Color(0xFF2C52A9),
      600: Color(0xFF4070CA),
      500: Color(0xFF589CF6),
      400: Color(0xFF80B1F3),
      300: Color(0xFF9BC7F9),
      200: Color(0xFFBDDDFD),
      100: Color(0xFFDEEFFE),
      50: Color(0xFFEBF4FC),
    },
  );
  static const int _blueValue = 0xFF5891EB;

  /// gray color
  static const MaterialColor gray = MaterialColor(
    _grayValue,
    <int, Color>{
      900: Color(0xFF102670),
      800: Color(0xFF1C3988),
      700: Color(0xFF2C52A9),
      600: Color(0xFF4070CA),
      500: Color(0xFF5891EB),
      400: Color(0xFF80B1F3),
      300: Color(0xFF9BC7F9),
      200: Color(0xFFF3F6F8),
      100: Color(0xFFDEEFFE),
      50: Color(0xFFEBF4FC),
    },
  );
  static const int _grayValue = 0xFF5891EB;
}