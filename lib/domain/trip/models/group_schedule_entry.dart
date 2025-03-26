import 'package:json_annotation/json_annotation.dart';
import 'package:travelmate/domain/trip/models/destination.dart';
import 'package:travelmate/domain/trip/models/schedule_entry.dart';

part 'group_schedule_entry.g.dart';

@JsonSerializable()
class GroupScheduleEntry extends ScheduleEntry {
  const GroupScheduleEntry({
    required super.startDate,
    required super.endDate,
    required this.name,
    required this.destinations,
  });

  factory GroupScheduleEntry.fromJson(Map<String, dynamic> json) =>
      _$GroupScheduleEntryFromJson(json);

  final String name;
  final List<Destination> destinations;

  Map<String, dynamic> toJson() => _$GroupScheduleEntryToJson(this);

  @override
  List<Object?> get props => [
        startDate,
        endDate,
        name,
        destinations,
      ];
}
