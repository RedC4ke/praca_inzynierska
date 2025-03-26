// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_schedule_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupScheduleEntry _$GroupScheduleEntryFromJson(Map<String, dynamic> json) =>
    GroupScheduleEntry(
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      name: json['name'] as String,
      destinations: (json['destinations'] as List<dynamic>)
          .map((e) => Destination.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GroupScheduleEntryToJson(GroupScheduleEntry instance) =>
    <String, dynamic>{
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'name': instance.name,
      'destinations': instance.destinations.map((e) => e.toJson()).toList(),
    };
