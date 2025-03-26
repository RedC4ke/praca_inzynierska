import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/application/base/loadable_state.dart';
import 'package:travelmate/domain/places/places_repository.dart';

part 'place_details_controller.g.dart';

@riverpod
class PlaceDetailsController extends _$PlaceDetailsController {
  @override
  LoadableState<void> build() {
    return const Initial();
  }

  Future<void> loadPlace(String id, String sessionToken) async {
    state = const Loading();
    final result = await ref
        .read(placesRepositoryProvider)
        .getPlaceDetails(
          id: id,
          sessionToken: sessionToken,
        )
        .run();

    result.fold(
      (error) => state = Error(error),
      (_) => state = const Success(null),
    );
  }
}
