import 'package:flutter/material.dart';

abstract class TmColorScheme {
  static ColorScheme get light {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff804d79),
      surfaceTint: Color(0xff804d79),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd7f5),
      onPrimaryContainer: Color(0xff653660),
      secondary: Color(0xff6e5869),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xfff7daef),
      onSecondaryContainer: Color(0xff554151),
      tertiary: Color(0xff815345),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdbd1),
      onTertiaryContainer: Color(0xff663c2f),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff7f9),
      onSurface: Color(0xff201a1e),
      onSurfaceVariant: Color(0xff4e444b),
      outline: Color(0xff80747b),
      outlineVariant: Color(0xffd1c2cb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff352e33),
      inversePrimary: Color(0xfff1b3e6),
      primaryFixed: Color(0xffffd7f5),
      onPrimaryFixed: Color(0xff340832),
      primaryFixedDim: Color(0xfff1b3e6),
      onPrimaryFixedVariant: Color(0xff653660),
      secondaryFixed: Color(0xfff7daef),
      onSecondaryFixed: Color(0xff271624),
      secondaryFixedDim: Color(0xffdabfd2),
      onSecondaryFixedVariant: Color(0xff554151),
      tertiaryFixed: Color(0xffffdbd1),
      onTertiaryFixed: Color(0xff321208),
      tertiaryFixedDim: Color(0xfff5b8a7),
      onTertiaryFixedVariant: Color(0xff663c2f),
      surfaceDim: Color(0xffe3d7dd),
      surfaceBright: Color(0xfffff7f9),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffdf0f7),
      surfaceContainer: Color(0xfff7eaf1),
      surfaceContainerHigh: Color(0xfff1e5eb),
      surfaceContainerHighest: Color(0xffecdfe5),
    );
  }

  static ColorScheme get dark {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff1b3e6),
      surfaceTint: Color(0xfff1b3e6),
      onPrimary: Color(0xff4c1f49),
      primaryContainer: Color(0xff653660),
      onPrimaryContainer: Color(0xffffd7f5),
      secondary: Color(0xffdabfd2),
      onSecondary: Color(0xff3d2b3a),
      secondaryContainer: Color(0xff554151),
      onSecondaryContainer: Color(0xfff7daef),
      tertiary: Color(0xfff5b8a7),
      onTertiary: Color(0xff4c261b),
      tertiaryContainer: Color(0xff663c2f),
      onTertiaryContainer: Color(0xffffdbd1),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff171216),
      onSurface: Color(0xffecdfe5),
      onSurfaceVariant: Color(0xffd1c2cb),
      outline: Color(0xff9a8d95),
      outlineVariant: Color(0xff4e444b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffecdfe5),
      inversePrimary: Color(0xff804d79),
      primaryFixed: Color(0xffffd7f5),
      onPrimaryFixed: Color(0xff340832),
      primaryFixedDim: Color(0xfff1b3e6),
      onPrimaryFixedVariant: Color(0xff653660),
      secondaryFixed: Color(0xfff7daef),
      onSecondaryFixed: Color(0xff271624),
      secondaryFixedDim: Color(0xffdabfd2),
      onSecondaryFixedVariant: Color(0xff554151),
      tertiaryFixed: Color(0xffffdbd1),
      onTertiaryFixed: Color(0xff321208),
      tertiaryFixedDim: Color(0xfff5b8a7),
      onTertiaryFixedVariant: Color(0xff663c2f),
      surfaceDim: Color(0xff171216),
      surfaceBright: Color(0xff3e373c),
      surfaceContainerLowest: Color(0xff120d11),
      surfaceContainerLow: Color(0xff201a1e),
      surfaceContainer: Color(0xff241e22),
      surfaceContainerHigh: Color(0xff2f282d),
      surfaceContainerHighest: Color(0xff3a3338),
    );
  }

  static const customColor1 = ExtendedColor(
    seed: Color(0xff8d00a5),
    value: Color(0xff8d00a5),
    light: ColorFamily(
      color: Color(0xff7b4e7f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd6fe),
      onColorContainer: Color(0xff613766),
    ),
    lightMediumContrast: ColorFamily(
      color: Color(0xff7b4e7f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd6fe),
      onColorContainer: Color(0xff613766),
    ),
    lightHighContrast: ColorFamily(
      color: Color(0xff7b4e7f),
      onColor: Color(0xffffffff),
      colorContainer: Color(0xffffd6fe),
      onColorContainer: Color(0xff613766),
    ),
    dark: ColorFamily(
      color: Color(0xffebb5ed),
      onColor: Color(0xff48204e),
      colorContainer: Color(0xff613766),
      onColorContainer: Color(0xffffd6fe),
    ),
    darkMediumContrast: ColorFamily(
      color: Color(0xffebb5ed),
      onColor: Color(0xff48204e),
      colorContainer: Color(0xff613766),
      onColorContainer: Color(0xffffd6fe),
    ),
    darkHighContrast: ColorFamily(
      color: Color(0xffebb5ed),
      onColor: Color(0xff48204e),
      colorContainer: Color(0xff613766),
      onColorContainer: Color(0xffffd6fe),
    ),
  );

  List<ExtendedColor> get extendedColors => [
        customColor1,
      ];
}

class ExtendedColor {
  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });

  final Color seed;
  final Color value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
