import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/error/models/place_prediction.dart';

part 'autocomplete_prediction.g.dart';

@JsonSerializable()
class AutocompletePrediction with EquatableMixin {
  AutocompletePrediction({
    required this.placePrediction,
  });

  factory AutocompletePrediction.fromJson(Map<String, dynamic> json) =>
      _$AutocompletePredictionFromJson(json);

  final PlacePrediction placePrediction;

  Map<String, dynamic> toJson() => _$AutocompletePredictionToJson(this);

  String get title => placePrediction.structuredFormat.mainText.text;
  String get subtitle =>
      placePrediction.structuredFormat.secondaryText?.text ?? '';

  @override
  List<Object?> get props => [
        placePrediction,
      ];
}
