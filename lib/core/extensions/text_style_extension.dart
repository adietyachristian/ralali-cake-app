import 'package:flutter/material.dart';

extension RalaliFontStyleExtension on TextStyle {
  TextStyle get mainHeader => copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 32,
      );
  TextStyle get sectionHeader => copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      );
  TextStyle get subHeader => copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );
  TextStyle get title => copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      );
  TextStyle get button => copyWith(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      );
  TextStyle get bodyRegular => copyWith(
        fontSize: 16,
      );
  TextStyle get bodyMedium => copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
  TextStyle get captionMedium => copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  TextStyle get captionRegular => copyWith(
        fontSize: 12,
      );
  TextStyle get textRegular => copyWith(
        fontSize: 16,
      );
  TextStyle get textMedium => copyWith(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      );
}
