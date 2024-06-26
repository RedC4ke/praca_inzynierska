// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bucket_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BucketList _$BucketListFromJson(Map<String, dynamic> json) => BucketList(
      name: json['name'] as String,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$BucketListToJson(BucketList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
