// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Destination _$DestinationFromJson(Map<String, dynamic> json) => Destination(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      notes: json['notes'] as String,
      type: $enumDecode(_$DestinationTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$DestinationToJson(Destination instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
      'notes': instance.notes,
      'type': _$DestinationTypeEnumMap[instance.type]!,
    };

const _$DestinationTypeEnumMap = {
  DestinationType.hotel: 'hotel',
  DestinationType.restaurant: 'restaurant',
  DestinationType.attraction: 'attraction',
  DestinationType.event: 'event',
  DestinationType.other: 'other',
};
