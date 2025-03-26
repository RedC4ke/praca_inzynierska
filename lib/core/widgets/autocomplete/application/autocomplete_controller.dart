import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/application/base/async_state.dart';
import 'package:travelmate/domain/error/models/autocomplete_prediction.dart';
import 'package:travelmate/domain/error/models/autocomplete_response.dart';
import 'package:travelmate/domain/places/places_repository.dart';
import 'package:uuid/uuid.dart';

part 'autocomplete_controller.g.dart';

@riverpod
class AutocompleteController extends _$AutocompleteController {
  @override
  AsyncState<AutocompleteResponse> build() {
    return const Initial();
  }

  String _sessionToken = const Uuid().v4();

  String clearSessionToken() {
    final oldToken = _sessionToken;
    _sessionToken = const Uuid().v4();

    return oldToken;
  }

  Future<List<AutocompletePrediction>> fetchAutocomplete(
    String query,
  ) async {
    if (query.isEmpty || query.length < 3) {
      state = const Initial();

      return [];
    }

    final response = await ref
        .read(placesRepositoryProvider)
        .getAutocomplete(
          input: query,
          sessionToken: _sessionToken,
        )
        .run();

    return response.fold(
      (l) {
        state = Error(l);

        return [];
      },
      (r) {
        state = Success(r);

        return r.suggestions;
      },
    );
  }
}
