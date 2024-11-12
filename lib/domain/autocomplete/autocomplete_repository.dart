import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/data/http/google_maps/google_maps_datasource.dart';
import 'package:travelmate/domain/autocomplete/models/autocomplete_response.dart';
import 'package:travelmate/domain/error/catch_error.dart';
import 'package:travelmate/domain/error/models/failure.dart';
import 'package:travelmate/firebase_options.dart';

final autocompleteRepositoryProvider = Provider<AutocompleteRepository>((ref) {
  return AutocompleteRepository(
    ref.read(googleMapsDatasourceProvider),
  );
});

class AutocompleteRepository {
  AutocompleteRepository(this._maps);

  final GoogleMapsDatasource _maps;

  TaskEither<Failure, AutocompleteResponse> getAutocomplete({
    required String input,
    required String sessionToken,
  }) =>
      catchError(
        () => _getAutocomplete(
          input: input,
          sessionToken: sessionToken,
        ),
      );

  Future<AutocompleteResponse> _getAutocomplete({
    required String input,
    required String sessionToken,
  }) async {
    final apiKey = DefaultFirebaseOptions.currentPlatform.apiKey;
    final language = Intl.getCurrentLocale();

    final response = await _maps.getAutocomplete(
      input,
      language,
      sessionToken,
      apiKey,
    );

    return response;
  }
}
