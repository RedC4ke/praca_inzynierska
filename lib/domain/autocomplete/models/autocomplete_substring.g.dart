// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_substring.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteSubstring _$AutocompleteSubstringFromJson(
        Map<String, dynamic> json) =>
    AutocompleteSubstring(
      length: (json['length'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$AutocompleteSubstringToJson(
        AutocompleteSubstring instance) =>
    <String, dynamic>{
      'length': instance.length,
      'offset': instance.offset,
    };
