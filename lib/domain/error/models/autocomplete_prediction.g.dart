// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autocomplete_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutocompletePrediction _$AutocompletePredictionFromJson(
        Map<String, dynamic> json) =>
    AutocompletePrediction(
      placePrediction: PlacePrediction.fromJson(
          json['placePrediction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AutocompletePredictionToJson(
        AutocompletePrediction instance) =>
    <String, dynamic>{
      'placePrediction': instance.placePrediction.toJson(),
    };
