import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmate/core/navigation/app_router.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/domain/trip/models/trip.dart';

class TripDaysEmpty extends StatelessWidget {
  const TripDaysEmpty({
    required this.trip,
    super.key,
  });

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.s.no_days,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          IconButton.filled(
            onPressed: () {
              context.pushRoute(
                AddDayRoute(trip: trip),
              );
            },
            icon: FaIcon(
              FontAwesomeIcons.calendarPlus,
              color: context.colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
