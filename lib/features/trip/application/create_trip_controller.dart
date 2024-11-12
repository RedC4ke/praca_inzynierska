import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/application/base/loadable_state.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/domain/trip/trip_repository.dart';

part 'create_trip_controller.g.dart';

@riverpod
class CreateTripController extends _$CreateTripController {
  @override
  LoadableState<Trip> build() {
    return const LoadableState.initial();
  }

  Future<void> createTrip(String tripName) async {
    state = const LoadableState.loading();
    final result =
        await ref.read(tripRepositoryProvider).createTrip(tripName).run();

    result.fold(
      (error) => state = LoadableState.error(error),
      (trip) => state = LoadableState.success(trip),
    );
  }
}
