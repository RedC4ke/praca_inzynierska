import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:travelmate/data/http/google_maps/google_maps_datasource.dart';
import 'package:travelmate/domain/error/catch_error.dart';
import 'package:travelmate/domain/error/models/autocomplete_query.dart';
import 'package:travelmate/domain/error/models/autocomplete_response.dart';
import 'package:travelmate/domain/error/models/failure.dart';

final placesRepositoryProvider = Provider<PlacesRepository>((ref) {
  return PlacesRepository(
    ref.read(googleMapsDatasourceProvider),
  );
});

class PlacesRepository {
  PlacesRepository(this._googleMapsDatasource);

  final GoogleMapsDatasource _googleMapsDatasource;

  String get _language => Intl.shortLocale(Intl.getCurrentLocale());

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
    final query = AutocompleteQuery(
      input: input,
      languageCode: _language,
      sessionToken: sessionToken,
    );

    final response = await _googleMapsDatasource.getAutocomplete(
      query: query,
    );

    return response;
  }

  TaskEither<Failure, void> getPlaceDetails({
    required String id,
    required String sessionToken,
  }) {
    const fieldMask =
        'displayName,photos,formattedAddress,location,primaryType,primaryTypeDisplayName';

    return catchError(
      () => _googleMapsDatasource.getPlaceDetails(
        id: id,
        fieldMask: fieldMask,
        sessionToken: sessionToken,
        languageCode: _language,
      ),
    );
  }
}
