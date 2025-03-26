// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteQuery _$AutocompleteQueryFromJson(Map<String, dynamic> json) =>
    AutocompleteQuery(
      input: json['input'] as String,
      languageCode: json['languageCode'] as String,
      sessionToken: json['sessionToken'] as String,
      includePureServiceAreaBusinesses:
          json['includePureServiceAreaBusinesses'] as bool? ?? false,
    );

Map<String, dynamic> _$AutocompleteQueryToJson(AutocompleteQuery instance) =>
    <String, dynamic>{
      'input': instance.input,
      'includePureServiceAreaBusinesses':
          instance.includePureServiceAreaBusinesses,
      'languageCode': instance.languageCode,
      'sessionToken': instance.sessionToken,
    };
