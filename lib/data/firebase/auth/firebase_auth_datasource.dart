import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final firebaseAuthDatasourceProvider = Provider(
  (ref) => FirebaseAuthDatasource(),
);

class FirebaseAuthDatasource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<User> signInAnonymously() async {
    final userCredential = await _auth.signInAnonymously();
    // Throw an exception if the user is null
    return userCredential.user!;
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Throw an exception if the user is null
    return userCredential.user!;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
