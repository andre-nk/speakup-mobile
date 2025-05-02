import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/web.dart';
import 'package:speakup_final/model/user/user.dart' as speakup;

class AuthRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  AuthRepository({FirebaseAuth? firebaseAuth, FirebaseFirestore? firebaseFirestore})
    : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
      _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  Future<User> signInWithGoogle() async {
    try {
      Logger().i("Signing in with Google");

      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      Logger().i("Google user: $googleUser");

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      final userCredential = await _firebaseAuth.signInWithCredential(credential);
      final User authUser = userCredential.user!;

      return authUser;
    } on FirebaseAuthException catch (e) {
      Logger().e(e.message);
      throw Exception(e.message);
    }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<void> storeUser(User user) async {
    try {
      final isExist = await checkIfUserExists(user.uid);
      if (!isExist) {
        final speakup.User userData = speakup.User(
          uid: user.uid,
          email: user.email ?? '',
          displayName: user.displayName ?? '',
          photoURL: user.photoURL,
          nativeLanguage: null,
          englishMastery: null,
          goal: '',
          goalDeadline: null,
          longestStreak: 0,
          currentStreak: 0,
          completedExercises: [],
          completedMaterials: [],
          createdAt: DateTime.now(),
        );

        await _firebaseFirestore.collection('users').doc(user.uid).set(userData.toJson());
      } else {
        Logger().i("User already exists in Firestore");
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> checkIfUserExists(String uid) async {
    try {
      final userDoc = await _firebaseFirestore.collection('users').doc(uid).get();
      return userDoc.exists;
    } catch (e) {
      Logger().e(e.toString());
      return false;
    }
  }

  Future<speakup.User> getCurrentUser() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user != null) {
        final userDoc = await _firebaseFirestore.collection('users').doc(user.uid).get();
        if (userDoc.exists) {
          return speakup.User.fromFirebaseUser(userDoc);
        } else {
          throw Exception("User not found in Firestore");
        }
      } else {
        throw Exception("No user is currently signed in");
      }
    } catch (e) {
      Logger().e(e.toString());
      rethrow;
    }
  }
}
