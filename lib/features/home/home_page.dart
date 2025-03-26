import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travelmate/application/base/loadable_state.dart';

import 'package:travelmate/core/widgets/tm_loading.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/features/home/application/trips_controller.dart';
import 'package:travelmate/features/home/widgets/home_header.dart';
import 'package:travelmate/features/home/widgets/trip_tile.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(tripsControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const HomeHeader(),
      ),
      body: switch (state) {
        Success(:final List<Trip> data) => RefreshIndicator(
            onRefresh: () async {
              await ref.read(tripsControllerProvider.notifier).loadTrips();
            },
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final trip = data[index];

                return TripTile(trip: trip);
              },
              separatorBuilder: (_, __) => const SizedBox(height: 8),
            ),
          ),
        _ => const TmLoading(),
      },
    );
  }
}
