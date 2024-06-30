import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/trip/models/location.dart';
import 'package:travelmate/domain/trip/models/trip_stop.dart';

part 'trip_stop_commute.g.dart';

@JsonEnum()
enum CommuteType {
  walk,
  bike,
  car,
  bus,
  train,
  tram,
  plane,
}

@JsonSerializable()
class TripStopCommute extends TripStop with EquatableMixin {
  TripStopCommute({
    required this.type,
    required super.time,
    required this.from,
    required this.to,
    super.durationMinutes,
    super.featured = false,
    super.id,
  });

  factory TripStopCommute.fromJson(Map<String, dynamic> json) =>
      _$TripStopCommuteFromJson(json);

  final CommuteType type;
  final Location from;
  final Location to;

  @override
  IconData get icon {
    switch (type) {
      case CommuteType.walk:
        return Icons.directions_walk;
      case CommuteType.bike:
        return Icons.directions_bike;
      case CommuteType.car:
        return Icons.directions_car;
      case CommuteType.bus:
        return Icons.directions_bus;
      case CommuteType.train:
        return Icons.train;
      case CommuteType.tram:
        return Icons.tram;
      case CommuteType.plane:
        return Icons.airplanemode_active;
    }
  }

  @override
  Map<String, dynamic> toJson() => _$TripStopCommuteToJson(this);

  @override
  TripStopCommute copyWith({
    String? id,
    DateTime? time,
    int? durationMinutes,
    bool? featured,
    CommuteType? type,
    Location? from,
    Location? to,
  }) {
    return TripStopCommute(
      id: id ?? this.id,
      time: time ?? this.time,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      featured: featured ?? this.featured,
      type: type ?? this.type,
      from: from ?? this.from,
      to: to ?? this.to,
    );
  }

  @override
  List<Object?> get props => [
        id,
        time,
        durationMinutes,
        featured,
        type,
        from,
        to,
      ];
}
