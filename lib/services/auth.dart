import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User get currentUser;
  Future<User> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthBase {

  final _firebaseAuth = FirebaseAuth.instance;

  Stream<User> authStateChanges() => _firebaseAuth.authStateChanges();

  @override
  User get currentUser => _firebaseAuth.currentUser;

  @override
  Future<User> signInAnonymously() async {
    final UserCredential = await _firebaseAuth.signInAnonymously();
    return UserCredential.user;
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}