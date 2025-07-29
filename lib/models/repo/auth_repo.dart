import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
  Future<User> login({required String email, required String password});
  Future<User> register({
    required String email,
    required String password,
    required String name,
  });
  Future<void> logout();
}

class AuthRepoImpl implements AuthRepo {
  //------ Singleton Pattern ---------
  static final AuthRepoImpl _instance = AuthRepoImpl._internal();
  factory AuthRepoImpl() => _instance;
  AuthRepoImpl._internal();
  //-----------------------------------

  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Future<User> login({required String email, required String password}) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Login Exception: ${e.code} - ${e.message}");
      if (e.code == 'user-not-found' ||
          e.code == 'wrong-password' ||
          e.code == 'invalid-credential') {
        throw Exception('الرقم السري او البريد الالكتروني غير صحيح.');
      } else if (e.code == 'network-request-failed') {
        throw Exception('تاكد من اتصالك بالانترنت.');
      } else {
        throw Exception('لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.');
      }
    }
  }

  @override
  Future<User> register({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await credential.user!.updateDisplayName(name);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Register Exception: ${e.code} - ${e.message}");
      if (e.code == 'weak-password') {
        throw Exception('الرقم السري ضعيف جداً.');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('لقد قمت بالتسجيل مسبقاً. الرجاء تسجيل الدخول.');
      } else if (e.code == 'network-request-failed') {
        throw Exception('تاكد من اتصالك بالانترنت.');
      } else {
        throw Exception('لقد حدث خطأ ما. الرجاء المحاولة مرة اخرى.');
      }
    }
  }

  @override
  Future<void> logout() async {
    await _auth.signOut();
  }
}
