import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/trip/models/location.dart';

part 'destination.g.dart';

@JsonSerializable()
class Destination with EquatableMixin {
  const Destination({
    required this.location,
    required this.notes,
    required this.type,
  });

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);

  final Location location;
  final String notes;
  final DestinationType type;

  Map<String, dynamic> toJson() => _$DestinationToJson(this);

  @override
  List<Object?> get props => [
        location,
        notes,
        type,
      ];
}

@JsonEnum()
enum DestinationType {
  hotel,
  restaurant,
  attraction,
  event,
  other,
}
