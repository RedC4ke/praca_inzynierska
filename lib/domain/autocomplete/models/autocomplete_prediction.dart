import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/autocomplete/models/autocomplete_structured_format.dart';
import 'package:travelmate/domain/autocomplete/models/autocomplete_substring.dart';

part 'autocomplete_prediction.g.dart';

@JsonSerializable()
class AutocompletePrediction with EquatableMixin {
  AutocompletePrediction({
    required this.description,
    required this.structuredFormatting,
    this.matchedSubstrings = const [],
    this.placeId,
    this.types = const [],
  });

  factory AutocompletePrediction.fromJson(Map<String, dynamic> json) =>
      _$AutocompletePredictionFromJson(json);

  final String description;
  final List<AutocompleteSubstring> matchedSubstrings;
  final AutocompleteStructuredFormat? structuredFormatting;
  final String? placeId;
  final List<String> types;

  @override
  List<Object?> get props => [
        description,
        matchedSubstrings,
        structuredFormatting,
        placeId,
        types,
      ];
}
