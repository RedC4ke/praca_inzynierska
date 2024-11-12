import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:travelmate/application/base/loadable_state.dart';
import 'package:travelmate/domain/auth/auth_repository.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  LoadableState<User> build() {
    _init();
    return const LoadableState<User>.initial();
  }

  Future<void> _init() async {
    ref.watch(authRepositoryProvider);
  }
}
