import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/trip/models/destination.dart';
import 'package:travelmate/domain/trip/models/location.dart';
import 'package:travelmate/domain/trip/models/schedule_entry.dart';

part 'destination_schedule_entry.g.dart';

@JsonSerializable()
class DestinationScheduleEntry extends ScheduleEntry with EquatableMixin {
  DestinationScheduleEntry({
    required super.startDate,
    required super.endDate,
    required this.location,
    required this.destination,
    required this.name,
  });

  factory DestinationScheduleEntry.fromJson(Map<String, dynamic> json) =>
      _$DestinationScheduleEntryFromJson(json);

  final String name;
  final Location location;
  final Destination destination;

  Map<String, dynamic> toJson() => _$DestinationScheduleEntryToJson(this);

  @override
  List<Object?> get props => [
        startDate,
        endDate,
        location,
        destination,
        name,
      ];
}
