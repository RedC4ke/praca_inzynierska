import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/application/base/loadable_state.dart';
import 'package:travelmate/domain/trip/models/trip.dart';

part 'create_trip_controller.g.dart';

@riverpod
class CreateTripController extends _$CreateTripController {
  @override
  LoadableState<Trip> build() {
    return const LoadableState.initial();
  }
}
