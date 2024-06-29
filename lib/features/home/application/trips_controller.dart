import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/application/base/loadable_state.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/domain/trip/trip_repository.dart';

part 'trips_controller.g.dart';

@riverpod
class TripsController extends _$TripsController {
  @override
  LoadableState<List<Trip>> build() {
    loadTrips();
    return const LoadableState.initial();
  }

  Future<void> loadTrips() async {
    if (stateOrNull != null) state = const LoadableState.loading();
    final result = await ref.read(tripRepositoryProvider).getTrips().run();

    result.fold(
      (error) => state = LoadableState.error(error),
      (trips) => state = LoadableState.success(trips),
    );
  }
}
