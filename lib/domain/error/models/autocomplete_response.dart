import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/error/models/autocomplete_prediction.dart';

part 'autocomplete_response.g.dart';

@JsonSerializable()
class AutocompleteResponse with EquatableMixin {
  AutocompleteResponse({
    required this.suggestions,
  });

  factory AutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseFromJson(json);

  final List<AutocompletePrediction> suggestions;

  Map<String, dynamic> toJson() => _$AutocompleteResponseToJson(this);

  @override
  List<Object?> get props => [suggestions];
}
