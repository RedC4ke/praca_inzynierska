import 'package:travelmate/gen/l10n.dart';

sealed class Failure {
  String get message;
}

class UnexpectedFailure extends Failure {
  UnexpectedFailure({required this.exception, this.stackTrace});

  final Exception exception;
  final StackTrace? stackTrace;

  @override
  String get message => S.current.err_unknown;
}
