import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatService extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<QuerySnapshot> getMessages(String chatId) {
    return _firestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy('timestamp')
        .snapshots();
  }

  Future<void> sendMessage(String chatId, String message) async {
    final user = _auth.currentUser;
    if (user != null) {
      await _firestore
          .collection('chats')
          .doc(chatId)
          .collection('messages')
          .add({
        'message': message,
        'sender': user.uid,
        'timestamp': Timestamp.now(),
      });
    }
  }

  // Corrected the method name and added a parameter for the message text
  Future<void> addMessage(String chatId, String message) async {
    final user = _auth.currentUser;
    if (user != null) {
      await _firestore
          .collection('chats')
          .doc(chatId)
          .collection('messages')
          .add({
        'message': message,
        'sender': user.uid,
        'timestamp': Timestamp.now(),
      });
    }
  }

  Future<String> createChat(String receiverId) async {
    final user = _auth.currentUser;
    if (user != null) {
      final chat = await _firestore.collection('chats').add({
        'users': [user.uid, receiverId],
      });
      return chat.id;
    }
    return '';
  }

  Future<void> deleteChat(String chatId) async {
    await _firestore.collection('chats').doc(chatId).delete();
  }

  Future<void> deleteMessage(String chatId, String messageId) async {
    await _firestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .doc(messageId)
        .delete();
  }

  Future<void> deleteAllMessages(String chatId) async {
    final messages = await _firestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .get();
    for (final message in messages.docs) {
      await message.reference.delete();
    }
  }

  Future<void> deleteAllChats() async {
    final chats = await _firestore.collection('chats').get();
    for (final chat in chats.docs) {
      await chat.reference.delete();
    }
  }
}
