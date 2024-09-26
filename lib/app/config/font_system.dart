// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:farm04_modeul/app/config/app_config.dart';

abstract class FontSystem {
  static const TextStyle H1 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.5,
  );

  static const TextStyle H2 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.25,
  );

  static const TextStyle H3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.2,
  );

  static const TextStyle ThinH4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.333,
  );

  static const TextStyle H4 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.333,
  );

  static const TextStyle H5 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.25,
  );

  static const TextStyle H6 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.25,
  );

  static const TextStyle APPBAR = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.25,
  );

  static const TextStyle Sub1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.429,
  );

  static const TextStyle Sub2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.429,
  );

  static const TextStyle Sub3 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.667,
  );

  static const TextStyle Sub3Bold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.667,
  );

  static const TextStyle Sub4Bold = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w700,
    fontFamily: AppConfig.APP_FONT_STYLE,
    color: Colors.black,
    height: 1.5,
  );
}
