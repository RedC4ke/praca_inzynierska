import 'package:equatable/equatable.dart';

abstract class ScheduleEntry extends Equatable {
  const ScheduleEntry({
    required this.startDate,
    required this.endDate,
  });

  final DateTime startDate;
  final DateTime? endDate;
}
