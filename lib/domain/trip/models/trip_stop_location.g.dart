// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_stop_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripStopLocation _$TripStopLocationFromJson(Map<String, dynamic> json) =>
    TripStopLocation(
      type: $enumDecode(_$LocationTypeEnumMap, json['type']),
      time: DateTime.parse(json['time'] as String),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      durationMinutes: (json['durationMinutes'] as num?)?.toInt(),
      featured: json['featured'] as bool? ?? false,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TripStopLocationToJson(TripStopLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time.toIso8601String(),
      'durationMinutes': instance.durationMinutes,
      'featured': instance.featured,
      'type': _$LocationTypeEnumMap[instance.type]!,
      'location': instance.location,
    };

const _$LocationTypeEnumMap = {
  LocationType.museum: 'museum',
  LocationType.beach: 'beach',
  LocationType.park: 'park',
  LocationType.view: 'view',
  LocationType.tour: 'tour',
};
