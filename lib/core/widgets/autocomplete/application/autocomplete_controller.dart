import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/application/base/async_state.dart';
import 'package:travelmate/domain/autocomplete/autocomplete_repository.dart';
import 'package:travelmate/domain/autocomplete/models/autocomplete_response.dart';
import 'package:uuid/uuid.dart';

part 'autocomplete_controller.g.dart';

@riverpod
class AutocompleteController extends _$AutocompleteController {
  @override
  AsyncState<AutocompleteResponse> build() {
    return const AsyncState.initial();
  }

  final String _sessionToken = const Uuid().v4();

  Future<AsyncState<AutocompleteResponse>> fetchAutocomplete(
    String query,
  ) async {
    if (query.isEmpty || query.length < 3) {
      return state = const AsyncState.initial();
    }

    final response = await ref
        .read(autocompleteRepositoryProvider)
        .getAutocomplete(
          input: query,
          sessionToken: _sessionToken,
        )
        .run();

    return state = response.fold(
      AsyncState.error,
      AsyncState.success,
    );
  }
}
