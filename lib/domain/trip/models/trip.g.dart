// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trip _$TripFromJson(Map<String, dynamic> json) => Trip(
      name: json['name'] as String,
      ownerId: json['ownerId'] as String,
      sharedWith: (json['sharedWith'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      imageUrl: json['imageUrl'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TripToJson(Trip instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'ownerId': instance.ownerId,
      'sharedWith': instance.sharedWith,
    };
