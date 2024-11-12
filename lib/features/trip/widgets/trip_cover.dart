import 'package:flutter/material.dart';
import 'package:travelmate/core/theme/tm_decorations.dart';
import 'package:travelmate/core/widgets/tm_cached_image.dart';

const kTripCoverAspectRatio = 1.5;

class TripCover extends StatelessWidget {
  const TripCover({
    required this.imageUrl,
    super.key,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: kTripCoverAspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: TmDecorations.shadowMedium,
        ),
        clipBehavior: Clip.antiAlias,
        child: TmCachedImage(
          imageUrl: imageUrl,
        ),
      ),
    );
  }
}
