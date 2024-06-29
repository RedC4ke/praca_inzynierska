import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travelmate/core/widgets/tm_app_bar.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TripHeader(trip: trip),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
