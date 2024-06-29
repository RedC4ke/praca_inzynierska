import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/firestore/models/firestore_model.dart';
import 'package:travelmate/domain/trip/models/trip_stop_commute.dart';
import 'package:travelmate/domain/trip/models/trip_stop_location.dart';

part 'trip_day.g.dart';

@JsonSerializable()
class TripDay extends FirestoreModel with EquatableMixin {
  TripDay({
    required this.description,
    required this.dayNumber,
    required this.date,
    required this.locations,
    required this.commutes,
    super.id,
  });

  factory TripDay.fromJson(Map<String, dynamic> json) =>
      _$TripDayFromJson(json);

  final String? description;
  final int dayNumber;
  final DateTime date;
  final List<TripStopCommute> commutes;
  final List<TripStopLocation> locations;

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
      dayNumber: dayNumber ?? this.dayNumber,
      date: date ?? this.date,
      commutes: commutes ?? this.commutes,
      locations: locations ?? this.locations,
    );
  }

  @override
  List<Object?> get props => [
        id,
        description,
        dayNumber,
        date,
        commutes,
        locations,
      ];
}
