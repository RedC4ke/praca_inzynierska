import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:rxdart/subjects.dart';
import 'package:travelmate/data/firebase/auth/firebase_auth_datasource.dart';
import 'package:travelmate/domain/error/catch_error.dart';
import 'package:travelmate/domain/error/models/failure.dart';

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    ref.read(firebaseAuthDatasourceProvider),
  ),
);

class AuthRepository {
  AuthRepository(this._datasource) {
    _init();
  }

  final FirebaseAuthDatasource _datasource;

  final BehaviorSubject<Either<Failure, User>> _userSubject = BehaviorSubject();
  Stream<Either<Failure, User>> get userStream => _userSubject.stream;

  Future<void> _init() async {
    final result = await signInAnonymously().run();
    result.fold(
      (l) => _userSubject.add(Left(l)),
      (r) => _userSubject.add(Right(r)),
    );

    _datasource.authStateChanges.listen(_authStateListener);
  }

  void _authStateListener(User? user) {
    if (user != null) {
      _userSubject.add(Right(user));
    }
  }

  TaskEither<Failure, User> signInAnonymously() {
    return catchError(_datasource.signInAnonymously);
  }

  TaskEither<Failure, User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return catchError(
      () => _datasource.signInWithEmailAndPassword(
        email: email,
        password: password,
      ),
    );
  }

  TaskEither<Failure, void> signOut() {
    return catchError(_datasource.signOut);
  }
}
