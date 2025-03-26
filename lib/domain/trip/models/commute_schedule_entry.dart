import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/trip/models/location.dart';
import 'package:travelmate/domain/trip/models/schedule_entry.dart';

part 'commute_schedule_entry.g.dart';

@JsonSerializable()
class CommuteScheduleEntry extends ScheduleEntry {
  const CommuteScheduleEntry({
    required super.startDate,
    required super.endDate,
    required this.origin,
    required this.destination,
    required this.type,
  });

  factory CommuteScheduleEntry.fromJson(Map<String, dynamic> json) =>
      _$CommuteScheduleEntryFromJson(json);

  final Location origin;
  final Location destination;
  final TransportType type;

  Map<String, dynamic> toJson() => _$CommuteScheduleEntryToJson(this);

  @override
  List<Object?> get props => [
        startDate,
        endDate,
        origin,
        destination,
        type,
      ];
}

@JsonEnum()
enum TransportType {
  plane,
  bus,
  car,
  train,
  cityTransport,
  walking,
}
