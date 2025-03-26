// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompleteMatch _$AutocompleteMatchFromJson(Map<String, dynamic> json) =>
    AutocompleteMatch(
      endOffset: (json['endOffset'] as num).toInt(),
      startOffset: (json['startOffset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AutocompleteMatchToJson(AutocompleteMatch instance) =>
    <String, dynamic>{
      'startOffset': instance.startOffset,
      'endOffset': instance.endOffset,
    };
