import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final userStream = FirebaseAuth.instance.authStateChanges();
  final user = FirebaseAuth.instance.currentUser;
  // Anonymous Firebase Login
  Future<void> anonLogin() async {
    try {
      print('button clicked');
      await FirebaseAuth.instance.signInAnonymously();
      print("Signed in with temporary account.");
    } on FirebaseAuthException catch (e) {}
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
