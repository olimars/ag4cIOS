import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Ag4cFirebaseUser {
  Ag4cFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Ag4cFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Ag4cFirebaseUser> ag4cFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<Ag4cFirebaseUser>((user) => currentUser = Ag4cFirebaseUser(user));
