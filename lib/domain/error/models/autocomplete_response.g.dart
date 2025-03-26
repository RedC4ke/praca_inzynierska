// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteResponse _$AutocompleteResponseFromJson(
        Map<String, dynamic> json) =>
    AutocompleteResponse(
      suggestions: (json['suggestions'] as List<dynamic>)
          .map(
              (e) => AutocompletePrediction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AutocompleteResponseToJson(
        AutocompleteResponse instance) =>
    <String, dynamic>{
      'suggestions': instance.suggestions.map((e) => e.toJson()).toList(),
    };
