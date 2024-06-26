import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/firestore/models/firestore_model.dart';

part 'bucket_list.g.dart';

@JsonSerializable()
class BucketList extends FirestoreModel with EquatableMixin {
  BucketList({
    required this.name,
    required this.description,
    this.imageUrl,
    super.id,
  });

  factory BucketList.fromJson(Map<String, dynamic> json) =>
      _$BucketListFromJson(json);

  final String name;
  final String? description;
  final String? imageUrl;
  //final List<String> invitationCodes;

  Map<String, dynamic> toJson() => _$BucketListToJson(this);

  @override
  BucketList copyWith({
    String? id,
    String? name,
    String? description,
    String? imageUrl,
  }) {
    return BucketList(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  List<Object?> get props => [id, name, description, imageUrl];
}
