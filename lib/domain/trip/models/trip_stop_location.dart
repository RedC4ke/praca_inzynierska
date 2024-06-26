import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/trip/models/location.dart';
import 'package:travelmate/domain/trip/models/trip_stop.dart';

part 'trip_stop_location.g.dart';

@JsonEnum()
enum LocationType {
  museum,
  beach,
  park,
  view,
  tour,
}

@JsonSerializable()
class TripStopLocation extends TripStop with EquatableMixin {
  TripStopLocation({
    required this.type,
    required super.time,
    required this.location,
    super.durationMinutes,
    super.featured = false,
    super.id,
  });

  factory TripStopLocation.fromJson(Map<String, dynamic> json) =>
      _$TripStopLocationFromJson(json);

  @override
  TripStop fromJson(Map<String, dynamic> json) =>
      TripStopLocation.fromJson(json);
  final LocationType type;
  final Location location;

  @override
  IconData get icon {
    switch (type) {
      case LocationType.museum:
        return Icons.museum;
      case LocationType.beach:
        return Icons.beach_access;
      case LocationType.park:
        return Icons.park;
      case LocationType.view:
        return Icons.remove_red_eye;
      case LocationType.tour:
        return Icons.tour;
    }
  }

  @override
  Map<String, dynamic> toJson() => _$TripStopLocationToJson(this);

  @override
  TripStopLocation copyWith({
    String? id,
    DateTime? time,
    int? durationMinutes,
    bool? featured,
    LocationType? type,
    Location? location,
  }) {
    return TripStopLocation(
      id: id ?? this.id,
      time: time ?? this.time,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      featured: featured ?? this.featured,
      type: type ?? this.type,
      location: location ?? this.location,
    );
  }

  @override
  List<Object?> get props => [
        id,
        time,
        durationMinutes,
        featured,
        type,
        location,
      ];
}
