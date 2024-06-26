import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/firestore/models/firestore_model.dart';
import 'package:travelmate/domain/trip/models/location.dart';
import 'package:travelmate/domain/trip/models/trip_day.dart';

part 'trip.g.dart';

@JsonSerializable()
class Trip extends FirestoreModel with EquatableMixin {
  Trip({
    required this.name,
    required this.ownerId,
    this.description,
    this.imageUrl,
    this.days = const [],
    super.id,
  });

  factory Trip.fromJson(Map<String, dynamic> json) => _$TripFromJson(json);

  final String name;
  final String? description;
  final String? imageUrl;
  final List<TripDay> days;
  final String ownerId;

  Map<String, dynamic> toJson() => _$TripToJson(this);

  @override
  Trip copyWith({
    String? id,
    String? name,
    String? description,
    String? imageUrl,
    List<TripDay>? days,
    String? ownerId,
  }) {
    return Trip(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      days: days ?? this.days,
      ownerId: ownerId ?? this.ownerId,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        imageUrl,
        days,
        ownerId,
      ];
}