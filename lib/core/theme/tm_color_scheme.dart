import 'package:flutter/material.dart';
import 'package:travelmate/core/theme/tm_colors.dart';

abstract class TmColorScheme {
  static const light = ColorScheme(
    brightness: Brightness.dark,
    primary: TmColors.primaryBase,
    onPrimary: TmColors.skyWhite,
    primaryContainer: TmColors.primaryLight,
    secondary: TmColors.greenBase,
    onSecondary: TmColors.skyWhite,
    secondaryContainer: TmColors.greenLight,
    error: TmColors.redBase,
    onError: TmColors.skyWhite,
    errorContainer: TmColors.redLight,
    onErrorContainer: TmColors.redDarkest,
    surface: TmColors.skyLightest,
    onSurface: TmColors.inkDark,
    surfaceDim: TmColors.skyLighter,
    surfaceBright: TmColors.skyWhite,
  );
}
