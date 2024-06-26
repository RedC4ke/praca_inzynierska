import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/autocomplete/models/autocomplete_prediction.dart';

part 'autocomplete_response.g.dart';

@JsonEnum()
enum AutocompleteStatus {
  @JsonValue('OK')
  ok,
  @JsonValue('ZERO_RESULTS')
  zeroResults,
  @JsonValue('OVER_QUERY_LIMIT')
  overQueryLimit,
  @JsonValue('REQUEST_DENIED')
  requestDenied,
  @JsonValue('INVALID_REQUEST')
  invalidRequest,
  @JsonValue('UNKNOWN_ERROR')
  unknownError,
}

@JsonSerializable()
class AutocompleteResponse with EquatableMixin {
  AutocompleteResponse({
    required this.predictions,
    required this.status,
    this.errorMessage,
  });

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);

  final List<AutocompletePrediction> predictions;
  final AutocompleteStatus status;
  final String? errorMessage;

  @override
  List<Object?> get props => [predictions, status, errorMessage];
}
