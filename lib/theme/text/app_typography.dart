import 'package:flutter/material.dart';
import 'package:flutter_advanced_boilerplate/theme/text/app_text_theme.dart';
import 'package:flutter_advanced_boilerplate/utils/palette.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_typography.freezed.dart';

@freezed
class AppTypography with _$AppTypography {
  factory AppTypography({
    required AppTextTheme black,
    required AppTextTheme white,
  }) = _AppTypography;

  const AppTypography._();

  factory AppTypography.create({required String fontFamily}) => AppTypography(
        black: _createTextTheme(fontFamily, Palette.black),
        white: _createTextTheme(fontFamily, Palette.white),
      );

  Typography get materialTypography => Typography.material2021(
        platform: null,
        black: black.materialTextTheme,
        white: white.materialTextTheme,
      );

  static AppTextTheme _createTextTheme(String fontFamily, Color color) => AppTextTheme(
        displayLarge: TextStyle(
          debugLabel: 'appTextTheme displayLarge',
          color: color,
          fontSize: 40,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: -1.5,
        ),
        displayMedium: TextStyle(
          debugLabel: 'appTextTheme displayMedium',
          color: color,
          fontSize: 35,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: -1.5,
        ),
        displaySmall: TextStyle(
          debugLabel: 'appTextTheme displaySmall',
          color: color,
          fontSize: 30,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: -1.5,
        ),
        headlineLarge: TextStyle(
          debugLabel: 'appTextTheme headlineLarge',
          color: color,
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: -0.5,
        ),
        headlineMedium: TextStyle(
          debugLabel: 'appTextTheme headlineMedium',
          color: color,
          fontSize: 23,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0,
        ),
        headlineSmall: TextStyle(
          debugLabel: 'appTextTheme headlineSmall',
          color: color,
          fontSize: 22,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.25,
        ),
        titleLarge: TextStyle(
          debugLabel: 'appTextTheme titleLarge',
          color: color,
          fontSize: 22,
          fontWeight: FontWeight.w700,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0,
        ),
        titleMedium: TextStyle(
          debugLabel: 'appTextTheme titleMedium',
          color: color,
          fontSize: 20,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0,
        ),
        titleSmall: TextStyle(
          debugLabel: 'appTextTheme titleSmall',
          color: color,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0,
        ),
        bodyLarge: TextStyle(
          debugLabel: 'appTextTheme bodyLarge',
          color: color,
          fontSize: 15,
          fontWeight: FontWeight.w700,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.25,
        ),
        bodyMedium: TextStyle(
          debugLabel: 'appTextTheme bodyMedium',
          color: color,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.15,
        ),
        bodySmall: TextStyle(
          debugLabel: 'appTextTheme bodySmall',
          color: color,
          fontSize: 13,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.1,
        ),
        labelLarge: TextStyle(
          debugLabel: 'appTextTheme labelLarge',
          color: color,
          fontSize: 15,
          fontWeight: FontWeight.w700,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 1.25,
        ),
        labelMedium: TextStyle(
          debugLabel: 'appTextTheme labelMedium',
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 0.4,
        ),
        labelSmall: TextStyle(
          debugLabel: 'appTextTheme labelSmall',
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.w400,
          fontFamily: fontFamily,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 1.5,
        ),
      );
}
