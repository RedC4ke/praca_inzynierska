import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/error/models/autocomplete_match.dart';

part 'structured_text.g.dart';

@JsonSerializable()
class StructuredText with EquatableMixin {
  StructuredText({
    required this.text,
    required this.matches,
  });

  factory StructuredText.fromJson(Map<String, dynamic> json) =>
      _$StructuredTextFromJson(json);

  final String text;
  @JsonKey(defaultValue: [])
  final List<AutocompleteMatch> matches;

  Map<String, dynamic> toJson() => _$StructuredTextToJson(this);

  @override
  List<Object?> get props => [text, matches];
}
