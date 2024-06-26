import 'package:flutter/material.dart';

abstract class TmTextTheme {
  static const theme = TextTheme(
    /// h9 figma properties
    /// fontFamily: Inter
    /// fontSize: 72px
    /// height: 108px
    /// fontWeight: 700
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    displayLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 72,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),

    /// h8 figma properties
    /// fontFamily: Inter
    /// fontSize: 56px
    /// height: 56px
    /// fontWeight: 700
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    displayMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 56,
      height: 1,
      fontWeight: FontWeight.w700,
    ),

    /// h7 figma properties
    /// fontFamily: Inter
    /// fontSize: 40px
    /// height: 40px
    /// fontWeight: 700
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    displaySmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 40,
      height: 1,
      fontWeight: FontWeight.w700,
    ),

    /// h6 figma properties
    /// fontFamily: Inter
    /// fontSize: 32px
    /// height: 48px
    /// fontWeight: 700
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    headlineLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 32,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),

    /// h5 figma properties
    /// fontFamily: Inter
    /// fontSize: 24px
    /// height: 36px
    /// fontWeight: 700
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    headlineMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 24,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),

    /// h4 figma properties
    /// fontFamily: Inter
    /// fontSize: 20px
    /// height: 32px
    /// fontWeight: 700
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    headlineSmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 20,
      height: 1.6,
      fontWeight: FontWeight.w700,
    ),

    /// h3 figma properties
    /// fontFamily: Inter
    /// fontSize: 16px
    /// height: 24px
    /// fontWeight: 600
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    titleLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w600,
    ),

    /// h2 figma properties
    /// fontFamily: Inter
    /// fontSize: 14px
    /// height: 20px
    /// fontWeight: 600
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    titleMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      height: 1.43,
      fontWeight: FontWeight.w600,
    ),

    /// h1 figma properties
    /// fontFamily: Inter
    /// fontSize: 12px
    /// height: 16px
    /// fontWeight: 600
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    titleSmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      height: 1.33,
      fontWeight: FontWeight.w600,
    ),

    /// subtitle figma properties
    /// fontFamily: Inter
    /// fontSize: 20px
    /// height: 32px
    /// fontWeight: 500
    /// letterSpacing: none
    /// fontStyle: none
    /// decoration: none
    labelLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 20,
      height: 1.6,
      fontWeight: FontWeight.w500,
    ),

    /// bodyLarge figma properties
    /// fontFamily: Inter
    /// fontSize: 16px
    /// height: 24px
    /// fontWeight: 400
    /// letterSpacing: 0.2px
    /// fontStyle: none
    /// decoration: none
    bodyLarge: TextStyle(
      fontFamily: 'Inter',
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
    ),

    /// bodyMedium figma properties
    /// fontFamily: Inter
    /// fontSize: 14px
    /// height: 20px
    /// fontWeight: 400
    /// letterSpacing: 0.2px
    /// fontStyle: none
    /// decoration: none
    bodyMedium: TextStyle(
      fontFamily: 'Inter',
      fontSize: 14,
      height: 1.43,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.2,
    ),

    /// bodySmall figma properties
    /// fontFamily: Inter
    /// fontSize: 12px
    /// height: 16px
    /// fontWeight: 500
    /// letterSpacing: 0.2px
    /// fontStyle: none
    /// decoration: none
    bodySmall: TextStyle(
      fontFamily: 'Inter',
      fontSize: 12,
      height: 1.33,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
    ),
  );
}
