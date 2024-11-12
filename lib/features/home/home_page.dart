import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:travelmate/core/utils/extensions.dart';
import 'package:travelmate/core/widgets/tm_app_bar.dart';
import 'package:travelmate/core/widgets/tm_loading.dart';
import 'package:travelmate/features/home/application/trips_controller.dart';
import 'package:travelmate/features/home/widgets/trip_tile.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(tripsControllerProvider);

    return Scaffold(
      appBar: TmAppBar(
        title: context.s.your_trips,
      ),
      body: state.maybeWhen(
        orElse: () => const TmLoading(),
        success: (data) {
          return RefreshIndicator(
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
          );
        },
      ),
    );
  }
}
