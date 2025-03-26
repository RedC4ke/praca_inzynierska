// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacePrediction _$PlacePredictionFromJson(Map<String, dynamic> json) =>
    PlacePrediction(
      placeId: json['placeId'] as String,
      structuredFormat: AutocompleteStructuredFormat.fromJson(
          json['structuredFormat'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PlacePredictionToJson(PlacePrediction instance) =>
    <String, dynamic>{
      'placeId': instance.placeId,
      'structuredFormat': instance.structuredFormat.toJson(),
      'types': instance.types,
    };
