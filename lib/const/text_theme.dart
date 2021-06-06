import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:sc_flutter_advanced/const/const.dart';

class TextThemes{
  static var headline_3 = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 48,
    color: ColorPalette.Black,
  );
  static var headline_5 = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: ColorPalette.Black
  );
  static var headline_6 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: ColorPalette.Black,
  );

  static var subtitle_1 = TextStyle(
    fontWeight: FontWeight.w400,
    color: ColorPalette.Black,
    fontSize: 16
  );

  static var caption = TextStyle(
      fontWeight: FontWeight.w400,
      color: ColorPalette.Black,
      fontSize: 12
  );

  static var body_1 = TextStyle(
      fontWeight: FontWeight.w400,
      color: ColorPalette.Black,
      fontSize: 16
  );
  static var body_2 = TextStyle(
    fontWeight: FontWeight.w400,
    color: ColorPalette.Black,
    fontSize: 14
  );

  static var button = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: ColorPalette.Black,
  );
}