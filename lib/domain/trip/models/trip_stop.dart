import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:travelmate/domain/firestore/models/firestore_model.dart';

abstract class TripStop extends FirestoreModel with EquatableMixin {
  TripStop({
    required this.time,
    this.durationMinutes,
    this.featured = false,
    super.id,
  });

  final DateTime time;
  final int? durationMinutes;
  final bool featured;
  IconData get icon;

  Map<String, dynamic> toJson();

  @override
  List<Object?> get props => [id, time, durationMinutes, featured];
}
