import 'package:flutter/material.dart';
import 'package:travelmate/core/theme/tm_color_scheme.dart';
import 'package:travelmate/core/theme/tm_colors.dart';
import 'package:travelmate/core/theme/tm_input_decoration_theme.dart';
import 'package:travelmate/core/theme/tm_text_theme.dart';

abstract class TmTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: TmTextTheme.theme.apply(),
    colorScheme: TmColorScheme.light,
    inputDecorationTheme: TmInputDecorationTheme.themeLight,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      sizeConstraints: BoxConstraints.tightFor(
        height: 48,
        width: 48,
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
        padding: const EdgeInsets.all(12),
        shape: const CircleBorder(),
      ),
    ),
  );

  static ThemeData get dark => light.copyWith(
        colorScheme: TmColorScheme.dark,
        brightness: Brightness.dark,
      );
}
