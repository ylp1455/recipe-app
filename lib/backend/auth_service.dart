import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> registerUser(
      String email, String password, String name) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await _firestore.collection('users').doc(result.user!.uid).set({
        'email': email,
        'password': password,
        'name': name,
      });
      return "Registration Successful";
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> loginUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Login Successful";
    } catch (e) {
      return e.toString();
    }
  }
}
