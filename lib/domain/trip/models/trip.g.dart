// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trip _$TripFromJson(Map<String, dynamic> json) => Trip(
      name: json['name'] as String,
      ownerId: json['ownerId'] as String,
      imageUrl: json['imageUrl'] as String?,
      days: (json['days'] as List<dynamic>?)
              ?.map((e) => TripDay.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TripToJson(Trip instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'days': instance.days.map((e) => e.toJson()).toList(),
      'ownerId': instance.ownerId,
    };
