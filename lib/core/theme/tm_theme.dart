import 'package:flutter/material.dart';
import 'package:travelmate/core/theme/tm_color_scheme.dart';
import 'package:travelmate/core/theme/tm_colors.dart';
import 'package:travelmate/core/theme/tm_input_decoration_theme.dart';
import 'package:travelmate/core/theme/tm_text_theme.dart';

abstract class TmTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    textTheme: TmTextTheme.theme.apply(
      displayColor: TmColors.inkDark,
      bodyColor: TmColors.inkDark,
    ),
    colorScheme: TmColorScheme.light,
    inputDecorationTheme: TmInputDecorationTheme.themeLight,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: TmColors.primaryBase,
      shape: CircleBorder(),
      sizeConstraints: BoxConstraints.tightFor(
        height: 52,
        width: 52,
      ),
      elevation: 0,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      elevation: 0,
    ),
    dividerTheme: const DividerThemeData(
      space: 1,
      thickness: 1,
    ),
    iconTheme: const IconThemeData(
      color: TmColors.inkDark,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: TmColors.primaryBase,
      ),
    ),
  );
}
