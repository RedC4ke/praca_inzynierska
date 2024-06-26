// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_stop_commute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripStopCommute _$TripStopCommuteFromJson(Map<String, dynamic> json) =>
    TripStopCommute(
      type: $enumDecode(_$CommuteTypeEnumMap, json['type']),
      time: DateTime.parse(json['time'] as String),
      durationMinutes: (json['durationMinutes'] as num?)?.toInt(),
      featured: json['featured'] as bool? ?? false,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TripStopCommuteToJson(TripStopCommute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'time': instance.time.toIso8601String(),
      'durationMinutes': instance.durationMinutes,
      'featured': instance.featured,
      'type': _$CommuteTypeEnumMap[instance.type]!,
    };

const _$CommuteTypeEnumMap = {
  CommuteType.walk: 'walk',
  CommuteType.bike: 'bike',
  CommuteType.car: 'car',
  CommuteType.bus: 'bus',
  CommuteType.train: 'train',
  CommuteType.tram: 'tram',
  CommuteType.plane: 'plane',
};
