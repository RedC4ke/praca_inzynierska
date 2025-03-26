// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structured_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StructuredText _$StructuredTextFromJson(Map<String, dynamic> json) =>
    StructuredText(
      text: json['text'] as String,
      matches: (json['matches'] as List<dynamic>?)
              ?.map(
                  (e) => AutocompleteMatch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$StructuredTextToJson(StructuredText instance) =>
    <String, dynamic>{
      'text': instance.text,
      'matches': instance.matches.map((e) => e.toJson()).toList(),
    };
