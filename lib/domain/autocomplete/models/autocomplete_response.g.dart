// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteResponse _$AutocompleteResponseFromJson(
        Map<String, dynamic> json) =>
    AutocompleteResponse(
      predictions: (json['predictions'] as List<dynamic>)
          .map(
              (e) => AutocompletePrediction.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecode(_$AutocompleteStatusEnumMap, json['status']),
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$AutocompleteResponseToJson(
        AutocompleteResponse instance) =>
    <String, dynamic>{
      'predictions': instance.predictions,
      'status': _$AutocompleteStatusEnumMap[instance.status]!,
      'errorMessage': instance.errorMessage,
    };

const _$AutocompleteStatusEnumMap = {
  AutocompleteStatus.ok: 'OK',
  AutocompleteStatus.zeroResults: 'ZERO_RESULTS',
  AutocompleteStatus.overQueryLimit: 'OVER_QUERY_LIMIT',
  AutocompleteStatus.requestDenied: 'REQUEST_DENIED',
  AutocompleteStatus.invalidRequest: 'INVALID_REQUEST',
  AutocompleteStatus.unknownError: 'UNKNOWN_ERROR',
};
