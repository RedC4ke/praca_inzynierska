import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/firestore/models/firestore_model.dart';
import 'package:travelmate/domain/trip/models/trip_stop.dart';
import 'package:travelmate/domain/trip/models/trip_stop_commute.dart';
import 'package:travelmate/domain/trip/models/trip_stop_location.dart';

part 'trip_day.g.dart';

@JsonSerializable()
class TripDay extends FirestoreModel with EquatableMixin {
  TripDay({
    required this.date,
    this.description,
    this.locations = const [],
    this.commutes = const [],
    super.id,
  });

  factory TripDay.fromJson(Map<String, dynamic> json) =>
      _$TripDayFromJson(json);

  final String? description;
  final DateTime date;
  final List<TripStopCommute> commutes;
  final List<TripStopLocation> locations;
  List<TripStop> get stops => [...commutes, ...locations].sortWithDate(
        (stop) => stop.time,
      );

  Map<String, dynamic> toJson() => _$TripDayToJson(this);

  @override
  TripDay copyWith({
    String? id,
    String? description,
    int? dayNumber,
    DateTime? date,
    List<TripStopCommute>? commutes,
    List<TripStopLocation>? locations,
  }) {
    return TripDay(
      id: id ?? this.id,
      description: description ?? this.description,
      date: date ?? this.date,
      commutes: commutes ?? this.commutes,
      locations: locations ?? this.locations,
    );
  }

  @override
  List<Object?> get props => [
        id,
        description,
        date,
        commutes,
        locations,
      ];

  String getStartingLocation() {
    final firstStop = stops.firstOrNull;
    if (firstStop == null) {
      return '';
    }

    if (firstStop is TripStopCommute) {
      return firstStop.from.name;
    }

    if (firstStop is TripStopLocation) {
      return firstStop.location.name;
    }

    return '';
  }

  String getEndingLocation() {
    final lastStop = stops.lastOrNull;
    if (lastStop == null) {
      return '';
    }

    if (lastStop is TripStopCommute) {
      return lastStop.to.name;
    }

    if (lastStop is TripStopLocation) {
      return lastStop.location.name;
    }

    return '';
  }
}
