import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/data/http/google_maps/google_maps_client.dart';
import 'package:travelmate/domain/error/models/autocomplete_query.dart';
import 'package:travelmate/domain/error/models/autocomplete_response.dart';

part 'google_maps_datasource.g.dart';

final googleMapsDatasourceProvider = Provider<GoogleMapsDatasource>((ref) {
  return GoogleMapsDatasource(ref.read(googleMapsClientProvider));
});

@RestApi()
abstract class GoogleMapsDatasource {
  factory GoogleMapsDatasource(Dio dio) = _GoogleMapsDatasource;

  @POST(':autocomplete')
  Future<AutocompleteResponse> getAutocomplete({
    @Body() required AutocompleteQuery query,
  });

  @GET('/{id}')
  Future<void> getPlaceDetails({
    @Header('X-Goog-FieldMask') required String fieldMask,
    @Path('id') required String id,
    @Query('languageCode') required String languageCode,
    @Query('sessionToken') required String sessionToken,
  });
}
