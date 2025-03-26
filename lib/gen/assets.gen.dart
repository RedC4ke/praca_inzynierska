/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Inter-Black.ttf
  String get interBlack => 'assets/fonts/Inter-Black.ttf';

  /// File path: assets/fonts/Inter-Bold.ttf
  String get interBold => 'assets/fonts/Inter-Bold.ttf';

  /// File path: assets/fonts/Inter-ExtraBold.ttf
  String get interExtraBold => 'assets/fonts/Inter-ExtraBold.ttf';

  /// File path: assets/fonts/Inter-ExtraLight.ttf
  String get interExtraLight => 'assets/fonts/Inter-ExtraLight.ttf';

  /// File path: assets/fonts/Inter-Light.ttf
  String get interLight => 'assets/fonts/Inter-Light.ttf';

  /// File path: assets/fonts/Inter-Medium.ttf
  String get interMedium => 'assets/fonts/Inter-Medium.ttf';

  /// File path: assets/fonts/Inter-Regular.ttf
  String get interRegular => 'assets/fonts/Inter-Regular.ttf';

  /// File path: assets/fonts/Inter-SemiBold.ttf
  String get interSemiBold => 'assets/fonts/Inter-SemiBold.ttf';

  /// File path: assets/fonts/Inter-Thin.ttf
  String get interThin => 'assets/fonts/Inter-Thin.ttf';

  /// List of all assets
  List<String> get values => [
    interBlack,
    interBold,
    interExtraBold,
    interExtraLight,
    interLight,
    interMedium,
    interRegular,
    interSemiBold,
    interThin,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ios_launcher.png
  AssetGenImage get iosLauncher =>
      const AssetGenImage('assets/images/ios_launcher.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [iosLauncher, logo];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
