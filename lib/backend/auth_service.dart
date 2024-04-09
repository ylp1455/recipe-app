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
        'password': password, // Storing the password in Firestore
        'name': name, // Storing the user's name in Firestore
        // Add other user info if needed
      });
      return "Registration Successful";
    } catch (e) {
      return e.toString();
    }
  }
}
