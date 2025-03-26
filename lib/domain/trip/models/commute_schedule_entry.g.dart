// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commute_schedule_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommuteScheduleEntry _$CommuteScheduleEntryFromJson(
        Map<String, dynamic> json) =>
    CommuteScheduleEntry(
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      origin: Location.fromJson(json['origin'] as Map<String, dynamic>),
      destination:
          Location.fromJson(json['destination'] as Map<String, dynamic>),
      type: $enumDecode(_$TransportTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$CommuteScheduleEntryToJson(
        CommuteScheduleEntry instance) =>
    <String, dynamic>{
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'origin': instance.origin.toJson(),
      'destination': instance.destination.toJson(),
      'type': _$TransportTypeEnumMap[instance.type]!,
    };

const _$TransportTypeEnumMap = {
  TransportType.plane: 'plane',
  TransportType.bus: 'bus',
  TransportType.car: 'car',
  TransportType.train: 'train',
  TransportType.cityTransport: 'cityTransport',
  TransportType.walking: 'walking',
};
