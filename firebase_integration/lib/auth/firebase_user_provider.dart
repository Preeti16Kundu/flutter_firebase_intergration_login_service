import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Winter2022PreetiFirebaseUser {
  Winter2022PreetiFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

Winter2022PreetiFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Winter2022PreetiFirebaseUser> winter2022PreetiFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Winter2022PreetiFirebaseUser>(
            (user) => currentUser = Winter2022PreetiFirebaseUser(user));
