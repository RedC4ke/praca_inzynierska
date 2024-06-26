// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompletePrediction _$AutocompletePredictionFromJson(
        Map<String, dynamic> json) =>
    AutocompletePrediction(
      description: json['description'] as String,
      structuredFormatting: json['structuredFormatting'] == null
          ? null
          : AutocompleteStructuredFormat.fromJson(
              json['structuredFormatting'] as Map<String, dynamic>),
      matchedSubstrings: (json['matchedSubstrings'] as List<dynamic>?)
              ?.map((e) =>
                  AutocompleteSubstring.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      placeId: json['placeId'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$AutocompletePredictionToJson(
        AutocompletePrediction instance) =>
    <String, dynamic>{
      'description': instance.description,
      'matchedSubstrings': instance.matchedSubstrings,
      'structuredFormatting': instance.structuredFormatting,
      'placeId': instance.placeId,
      'types': instance.types,
    };
