import 'package:flutter/material.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/features/trip/widgets/trip_cover.dart';

class TripHeader extends StatelessWidget {
  const TripHeader({
    required this.trip,
    super.key,
  });

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TripCover(
          imageUrl: trip.imageUrl,
        ),
        const SizedBox(width: 8),
        const Expanded(
          child: Column(
            children: [],
          ),
        ),
      ],
    );
  }
}
