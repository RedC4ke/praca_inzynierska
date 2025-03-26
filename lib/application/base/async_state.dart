import 'package:equatable/equatable.dart';
import 'package:travelmate/domain/error/models/failure.dart';

class AsyncState<T> extends Equatable {
  const AsyncState();

  @override
  List<Object?> get props => [];
}

class Initial<T> extends AsyncState<T> {
  const Initial();

  @override
  List<Object?> get props => [];
}

class Success<T> extends AsyncState<T> {
  const Success(this.data);

  final T data;

  @override
  List<Object?> get props => [data];
}

class Error<T> extends AsyncState<T> {
  const Error(this.failure);

  final Failure failure;

  @override
  List<Object?> get props => [failure];
}
