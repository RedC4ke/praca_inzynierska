import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/firestore/models/firestore_model.dart';

part 'location.g.dart';

@JsonSerializable()
class Location extends FirestoreModel with EquatableMixin {
  Location({
    required this.name,
    required this.latitude,
    required this.longitude,
    this.imageUrl,
    this.googlePlacesId,
    super.id,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  final String name;
  final String? imageUrl;
  final double latitude;
  final double longitude;
  final String? googlePlacesId;

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  Location copyWith({
    String? id,
    String? name,
    String? imageUrl,
    double? latitude,
    double? longitude,
    String? googlePlacesId,
  }) {
    return Location(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      googlePlacesId: googlePlacesId ?? this.googlePlacesId,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        latitude,
        longitude,
        imageUrl,
        googlePlacesId,
      ];
}
