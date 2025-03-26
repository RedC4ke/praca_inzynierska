import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/application/base/loadable_state.dart';
import 'package:travelmate/domain/trip/models/trip.dart';
import 'package:travelmate/domain/trip/trip_repository.dart';

part 'create_trip_controller.g.dart';

@riverpod
class CreateTripController extends _$CreateTripController {
  @override
  LoadableState<Trip> build() {
    return const Initial();
  }

  Future<void> createTrip(String tripName) async {
    state = const Loading();
    final result =
        await ref.read(tripRepositoryProvider).createTrip(tripName).run();

    result.fold(
      (error) => state = Error(error),
      (trip) => state = Success(trip),
    );
  }
}
