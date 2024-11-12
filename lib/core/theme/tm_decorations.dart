import 'package:flutter/material.dart';

abstract class TmDecorations {
  static const _shadowColor = Color(0xFF141414);

  static final shadowSmall = [
    BoxShadow(
      blurRadius: 1,
      color: _shadowColor.withOpacity(0.04),
    ),
    BoxShadow(
      blurRadius: 8,
      color: _shadowColor.withOpacity(0.08),
    ),
  ];

  static final shadowMedium = [
    BoxShadow(
      blurRadius: 1,
      color: _shadowColor.withOpacity(0.08),
    ),
    BoxShadow(
      blurRadius: 8,
      spreadRadius: 2,
      offset: const Offset(0, 1),
      color: _shadowColor.withOpacity(0.08),
    ),
  ];

  static final shadowLarge = [
    BoxShadow(
      blurRadius: 24,
      spreadRadius: 8,
      offset: const Offset(0, 1),
      color: _shadowColor.withOpacity(0.08),
    ),
  ];
}
