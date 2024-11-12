import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmate/core/navigation/app_router.dart';
import 'package:travelmate/core/widgets/tm_app_bar.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/features/trip/widgets/trip_day_tile.dart';
import 'package:travelmate/features/trip/widgets/trip_days_empty.dart';
import 'package:travelmate/features/trip/widgets/trip_header.dart';

@RoutePage()
class TripPage extends StatelessWidget {
  const TripPage({
    required this.trip,
    super.key,
  });

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppBar(
        title: trip.name,
        actions: [
          if (trip.days.isNotEmpty)
            IconButton(
              icon: const FaIcon(FontAwesomeIcons.calendarPlus),
              onPressed: () {
                context.pushRoute(
                  AddDayRoute(trip: trip),
                );
              },
            ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TripHeader(trip: trip),
            if (trip.days.isEmpty)
              TripDaysEmpty(
                trip: trip,
              ),
            if (trip.days.isNotEmpty)
              ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: trip.days.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (context, index) => TripDayTile(
                  tripDay: trip.days[index],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
