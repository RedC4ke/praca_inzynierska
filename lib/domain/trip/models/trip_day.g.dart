// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripDay _$TripDayFromJson(Map<String, dynamic> json) => TripDay(
      description: json['description'] as String?,
      dayNumber: (json['dayNumber'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      locations: (json['locations'] as List<dynamic>)
          .map((e) => TripStopLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      commutes: (json['commutes'] as List<dynamic>)
          .map((e) => TripStopCommute.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TripDayToJson(TripDay instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'dayNumber': instance.dayNumber,
      'date': instance.date.toIso8601String(),
      'commutes': instance.commutes,
      'locations': instance.locations,
    };
