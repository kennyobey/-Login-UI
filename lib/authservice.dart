import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:login_ui/user_model.dart';

// class AuthService {
//   handleAuth() {
//     return StreamBuilder(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (BuildContext context, snapshot) {
//           if (snapshot.hasData) {
//             return HomePage();
//           }
//           else return LoginPage();
//         }
//     );
//   }
//
//   signOut(){
//     FirebaseAuth.instance.signOut();
//   }
//
//   signIn(String email, String password, context){
//     FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((val) {
//       print("Signed in");
//     }).catchError((e) {
//       ErrorHandler().errorDialog(context, e);
//     });
//   }
// }
//

class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  User? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return User(user.uid, user.email);
  }

  Stream<User?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  Future<User?> SignInwithEmailandPassword(
      String password, String email) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return _userFromFirebase(credential.user);
  }

  Future<User?> CreateUserwithEmailandPassword(
      String password, String email) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return _userFromFirebase(credential.user);
  }

  Future<void> SignOut() async {
    return await _firebaseAuth.signOut();
  }
}
