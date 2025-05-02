import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OnboardingRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  OnboardingRepository({FirebaseAuth? firebaseAuth, FirebaseFirestore? firebaseFirestore})
    : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
      _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  Future<void> updateUserField(String field, dynamic value) async {
    try {
      await _firebaseFirestore.collection('users').doc(
        _firebaseAuth.currentUser?.uid,
      ).update({field: value});
    } catch (e) {
      throw Exception('Failed to update user field: $e');
    }
  }
}
