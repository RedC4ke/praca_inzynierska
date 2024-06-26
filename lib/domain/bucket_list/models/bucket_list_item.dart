import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/bucket_list/models/bucket_list_item_geolocation.dart';
import 'package:travelmate/domain/firestore/models/firestore_model.dart';

part 'bucket_list_item.g.dart';

@JsonSerializable(explicitToJson: true)
class BucketListItem extends FirestoreModel with EquatableMixin {
  BucketListItem({
    required this.listId,
    required this.title,
    required this.description,
    required this.isCompleted,
    super.id,
    this.geolocation,
  });

  factory BucketListItem.fromJson(Map<String, dynamic> json) =>
      _$BucketListItemFromJson(json);

  final String listId;
  final String title;
  final String description;
  final bool isCompleted;
  final BucketListItemGeolocation? geolocation;

  Map<String, dynamic> toJson() => _$BucketListItemToJson(this);

  @override
  BucketListItem copyWith({
    String? listId,
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
    BucketListItemGeolocation? geolocation,
  }) {
    return BucketListItem(
      listId: listId ?? this.listId,
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      isCompleted: isCompleted ?? this.isCompleted,
      geolocation: geolocation ?? this.geolocation,
    );
  }

  @override
  List<Object?> get props => [
        listId,
        id,
        title,
        description,
        isCompleted,
        geolocation,
      ];
}
