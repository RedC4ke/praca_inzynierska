import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/application/base/loadable_state.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/domain/trip/models/trip_day.dart';
import 'package:travelmate/domain/trip/trip_repository.dart';
import 'package:travelmate/features/home/application/trips_controller.dart';

part 'add_day_controller.g.dart';

@riverpod
class AddDayController extends _$AddDayController {
  @override
  LoadableState<Trip> build(Trip trip) {
    return const LoadableState<Trip>.initial();
  }

  Future<void> addDay(TripDay day) async {
    if (stateOrNull != null) {
      state = const LoadableState.loading();
    }

    final result = await ref
        .read(tripRepositoryProvider)
        .updateOrAddTripDay(day, trip)
        .run();

    result.fold(
      (error) => state = LoadableState.error(error),
      (trip) {
        ref.read(tripsControllerProvider.notifier).onTripChanged(trip);
        state = LoadableState.success(trip);
      },
    );
  }
}
