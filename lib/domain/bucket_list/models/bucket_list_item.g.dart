// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bucket_list_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BucketListItem _$BucketListItemFromJson(Map<String, dynamic> json) =>
    BucketListItem(
      listId: json['listId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      isCompleted: json['isCompleted'] as bool,
      id: json['id'] as String?,
      geolocation: json['geolocation'] == null
          ? null
          : BucketListItemGeolocation.fromJson(
              json['geolocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BucketListItemToJson(BucketListItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listId': instance.listId,
      'title': instance.title,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
      'geolocation': instance.geolocation?.toJson(),
    };
