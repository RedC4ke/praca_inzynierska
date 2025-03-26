// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_schedule_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationScheduleEntry _$DestinationScheduleEntryFromJson(
        Map<String, dynamic> json) =>
    DestinationScheduleEntry(
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      destination:
          Destination.fromJson(json['destination'] as Map<String, dynamic>),
      name: json['name'] as String,
    );

Map<String, dynamic> _$DestinationScheduleEntryToJson(
        DestinationScheduleEntry instance) =>
    <String, dynamic>{
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'name': instance.name,
      'location': instance.location.toJson(),
      'destination': instance.destination.toJson(),
    };
