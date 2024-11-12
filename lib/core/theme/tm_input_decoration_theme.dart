import 'package:flutter/material.dart';
import 'package:travelmate/core/theme/tm_color_scheme.dart';
import 'package:travelmate/core/theme/tm_colors.dart';
import 'package:travelmate/core/theme/tm_text_theme.dart';

enum BorderType { disabled, enabled, focused, error, focusedError }

abstract class TmInputDecorationTheme {
  static const _padding = EdgeInsets.symmetric(
    horizontal: 16,
    vertical: 13,
  );

  static final InputDecorationTheme themeLight = InputDecorationTheme(
    alignLabelWithHint: true,
    errorBorder: borderLight(BorderType.error),
    focusedBorder: borderLight(BorderType.focused),
    focusedErrorBorder: borderLight(BorderType.focusedError),
    enabledBorder: borderLight(BorderType.enabled),
    disabledBorder: borderLight(BorderType.disabled),
    fillColor: TmColors.skyWhite,
    filled: true,
    contentPadding: _padding,
    hintStyle: TmTextTheme.theme.bodyMedium?.copyWith(
      color: TmColors.inkDark,
      height: 1,
    ),
  );

  static InputBorder borderLight(BorderType type) {
    final radius = BorderRadius.circular(16);

    final borderColor = switch (type) {
      BorderType.enabled => TmColorScheme.light.outline,
      BorderType.disabled => TmColorScheme.light.outlineVariant,
      BorderType.focused => TmColorScheme.light.primary,
      BorderType.error => TmColorScheme.light.error,
      BorderType.focusedError => TmColorScheme.light.error,
    };
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
      ),
      borderRadius: radius,
    );
  }
}
