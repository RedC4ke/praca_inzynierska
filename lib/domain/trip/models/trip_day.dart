import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/firestore/models/firestore_model.dart';
import 'package:travelmate/domain/trip/models/trip_stop.dart';

part 'trip_day.g.dart';

@JsonSerializable()
class TripDay extends FirestoreModel with EquatableMixin {
  TripDay({
    required this.description,
    required this.dayNumber,
    required this.date,
    required this.stops,
    super.id,
  });

  factory TripDay.fromJson(Map<String, dynamic> json) =>
      _$TripDayFromJson(json);

  final String? description;
  final int dayNumber;
  final DateTime date;
  final List<TripStop> stops;

  Map<String, dynamic> toJson() => _$TripDayToJson(this);

  @override
  TripDay copyWith({
    String? id,
    String? description,
    int? dayNumber,
    DateTime? date,
    List<TripStop>? stops,
  }) {
    return TripDay(
      id: id ?? this.id,
      description: description ?? this.description,
      dayNumber: dayNumber ?? this.dayNumber,
      date: date ?? this.date,
      stops: stops ?? this.stops,
    );
  }

  @override
  List<Object?> get props => [id, description, dayNumber, date, stops];
}
