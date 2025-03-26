// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_structured_format.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteStructuredFormat _$AutocompleteStructuredFormatFromJson(
        Map<String, dynamic> json) =>
    AutocompleteStructuredFormat(
      mainText:
          StructuredText.fromJson(json['mainText'] as Map<String, dynamic>),
      secondaryText: json['secondaryText'] == null
          ? null
          : StructuredText.fromJson(
              json['secondaryText'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AutocompleteStructuredFormatToJson(
        AutocompleteStructuredFormat instance) =>
    <String, dynamic>{
      'mainText': instance.mainText.toJson(),
      'secondaryText': instance.secondaryText?.toJson(),
    };
