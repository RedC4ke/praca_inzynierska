import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelmate/gen/l10n.dart';

extension XBuildContext on BuildContext {
  S get s => S.of(this);

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;
}

extension XDateTime on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  String ddMMyyyy() {
    return DateFormat('dd.MM.yyyy').format(this);
  }
}
