// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripDay _$TripDayFromJson(Map<String, dynamic> json) => TripDay(
      date: DateTime.parse(json['date'] as String),
      description: json['description'] as String?,
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => TripStopLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      commutes: (json['commutes'] as List<dynamic>?)
              ?.map((e) => TripStopCommute.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TripDayToJson(TripDay instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'date': instance.date.toIso8601String(),
      'commutes': instance.commutes.map((e) => e.toJson()).toList(),
      'locations': instance.locations.map((e) => e.toJson()).toList(),
    };
