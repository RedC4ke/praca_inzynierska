// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_structured_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteStructuredFormat _$AutocompleteStructuredFormatFromJson(
        Map<String, dynamic> json) =>
    AutocompleteStructuredFormat(
      mainText: json['mainText'] as String,
      mainTextMatchedSubstrings: (json['mainTextMatchedSubstrings']
              as List<dynamic>)
          .map((e) => AutocompleteSubstring.fromJson(e as Map<String, dynamic>))
          .toList(),
      secondaryText: json['secondaryText'] as String?,
      secondaryTextMatchedSubstrings:
          (json['secondaryTextMatchedSubstrings'] as List<dynamic>?)
                  ?.map((e) =>
                      AutocompleteSubstring.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$AutocompleteStructuredFormatToJson(
        AutocompleteStructuredFormat instance) =>
    <String, dynamic>{
      'mainText': instance.mainText,
      'mainTextMatchedSubstrings': instance.mainTextMatchedSubstrings,
      'secondaryText': instance.secondaryText,
      'secondaryTextMatchedSubstrings': instance.secondaryTextMatchedSubstrings,
    };
