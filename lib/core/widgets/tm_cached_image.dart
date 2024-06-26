import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shimmer/shimmer.dart';
import 'package:travelmate/core/utils/extensions.dart';

class TmCachedImage extends HookWidget {
  const TmCachedImage({
    this.imageUrl,
    super.key,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return const Center(
        child: Icon(
          Icons.image_not_supported,
        ),
      );
    }
    return CachedNetworkImage(
      imageUrl: imageUrl!,
      fit: BoxFit.cover,
      placeholder: (context, _) => Shimmer.fromColors(
        baseColor: context.theme.colorScheme.surface,
        highlightColor: context.theme.colorScheme.surfaceDim,
        child: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: context.theme.colorScheme.surface,
        ),
      ),
      errorWidget: (_, __, ___) => const Icon(
        Icons.error,
      ),
    );
  }
}
