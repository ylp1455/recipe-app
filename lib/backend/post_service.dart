import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PostService {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<String?> getUserName() async {
    User? user = _auth.currentUser;
    if (user != null) {
      DocumentSnapshot userDoc =
          await _firestore.collection('users').doc(user.uid).get();
      return userDoc.exists ? userDoc['name'] : null;
    }
    return null;
  }

  Future<void> uploadImageAndCreatePost(File image, String caption) async {
    if (image == null) return;

    String? userName = await getUserName(); // Fetch the user's name
    if (userName == null) {
      print('User name could not be retrieved.');
      return;
    }

    String fileName = image.path.split('/').last;
    Reference ref = _storage.ref().child("posts/$fileName");
    UploadTask uploadTask = ref.putFile(image);

    await uploadTask.whenComplete(() async {
      final url = await ref.getDownloadURL();

      await _firestore.collection('posts').add({
        'caption': caption,
        'imageUrl': url,
        'uploadedBy': userName, // Include the user's name in the document
      });
    });
  }

  // Method to fetch posts from Firestore
  Stream<QuerySnapshot> getPosts() {
    return _firestore.collection('posts').snapshots();
  }
}
