import 'package:equatable/equatable.dart';
import 'package:travelmate/domain/error/models/failure.dart';

sealed class LoadableState<T> extends Equatable {
  const LoadableState();
}

class Initial<T> extends LoadableState<T> {
  const Initial();

  @override
  List<Object?> get props => [];
}

class Loading<T> extends LoadableState<T> {
  const Loading();

  @override
  List<Object?> get props => [];
}

class Success<T> extends LoadableState<T> {
  const Success(this.data);

  final T data;

  @override
  List<Object?> get props => [data];
}

class Error<T> extends LoadableState<T> {
  const Error(this.failure);

  final Failure failure;

  @override
  List<Object?> get props => [failure];
}
