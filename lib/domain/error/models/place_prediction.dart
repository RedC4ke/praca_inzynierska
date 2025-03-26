import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/error/models/autocomplete_structured_format.dart';

part 'place_prediction.g.dart';

@JsonSerializable()
class PlacePrediction with EquatableMixin {
  PlacePrediction({
    required this.placeId,
    required this.structuredFormat,
    required this.types,
  });

  factory PlacePrediction.fromJson(Map<String, dynamic> json) =>
      _$PlacePredictionFromJson(json);

  final String placeId;
  final AutocompleteStructuredFormat structuredFormat;
  final List<String> types;

  Map<String, dynamic> toJson() => _$PlacePredictionToJson(this);

  @override
  List<Object?> get props => [placeId, structuredFormat, types];
}
