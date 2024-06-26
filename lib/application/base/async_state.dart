import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travelmate/domain/error/models/failure.dart';

part 'async_state.freezed.dart';

@freezed
class AsyncState<T> with _$AsyncState<T> {
  const factory AsyncState.initial() = _Initial<T>;
  const factory AsyncState.success(T data) = _Success<T>;
  const factory AsyncState.error(Failure failure) = _Error<T>;
}
