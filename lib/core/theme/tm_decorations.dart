import 'package:flutter/material.dart';
import 'package:travelmate/core/theme/tm_color_scheme.dart';

abstract class TmDecorations {
  static final _shadowColor = TmColorScheme.customColor1.value;

  static final shadowSmall = [
    BoxShadow(
      blurRadius: 1,
      color: _shadowColor.withValues(alpha: 0.04),
    ),
    BoxShadow(
      blurRadius: 8,
      color: _shadowColor.withValues(alpha: 0.08),
    ),
  ];

  static final shadowMedium = [
    BoxShadow(
      blurRadius: 1,
      color: _shadowColor.withValues(alpha: 0.08),
    ),
    BoxShadow(
      blurRadius: 8,
      spreadRadius: 2,
      offset: const Offset(0, 1),
      color: _shadowColor.withValues(alpha: 0.08),
    ),
  ];

  static final shadowLarge = [
    BoxShadow(
      blurRadius: 24,
      spreadRadius: 8,
      offset: const Offset(0, 1),
      color: _shadowColor.withValues(alpha: 0.08),
    ),
  ];
}
