import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travelmate/core/navigation/app_router.dart';
import 'package:travelmate/core/theme/tm_decorations.dart';
import 'package:travelmate/core/widgets/tm_cached_image.dart';
import 'package:travelmate/domain/trip/models/trip.dart';

class TripTile extends StatelessWidget {
  const TripTile({
    required this.trip,
    super.key,
  });

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: TmDecorations.shadowMedium,
        color: Theme.of(context).colorScheme.surface,
      ),
      clipBehavior: Clip.antiAlias,
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {
            context.pushRoute(TripRoute(trip: trip));
          },
          child: Row(
            children: [
              Flexible(
                child: TmCachedImage(
                  imageUrl: trip.imageUrl,
                ),
              ),
              Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        trip.name,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
