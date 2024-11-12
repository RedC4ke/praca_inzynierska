import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/core/widgets/tm_app_bar.dart';
import 'package:travelmate/domain/trip/models/trip_day.dart';

@RoutePage()
class DayPage extends StatelessWidget {
  const DayPage({
    required this.tripDay,
    super.key,
  });

  final TripDay tripDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppBar(
        title: tripDay.date.ddMMyyyy(),
      ),
      // body: ListView.builder(itemBuilder: itemBuilder),
    );
  }
}
