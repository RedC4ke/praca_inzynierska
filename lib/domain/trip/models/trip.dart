import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/firestore/models/firestore_model.dart';

part 'trip.g.dart';

@JsonSerializable(explicitToJson: true)
class Trip extends FirestoreModel with EquatableMixin {
  Trip({
    required this.name,
    required this.ownerId,
    this.sharedWith = const [],
    this.imageUrl,
    super.id,
  });

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  final String name;
  final String? imageUrl;
  final String ownerId;
  @JsonKey(defaultValue: [])
  final List<String> sharedWith;

  Map<String, dynamic> toJson() => _$TripToJson(this);

  @override
  Trip copyWith({
    String? id,
    String? name,
    String? imageUrl,
    List<String>? sharedWith,
    String? ownerId,
  }) {
    return Trip(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      sharedWith: sharedWith ?? this.sharedWith,
      ownerId: ownerId ?? this.ownerId,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        imageUrl,
        sharedWith,
        ownerId,
      ];
}
