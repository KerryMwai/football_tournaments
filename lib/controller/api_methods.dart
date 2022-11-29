import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticateUser {
  String email;
  String password;
  final FirebaseAuth user = FirebaseAuth.instance;
  AuthenticateUser({required this.email, required this.password});
  Future<bool> signup() async {
    try {
      await user.createUserWithEmailAndPassword(
          email: email, password: password);
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> signin() async {
    try {
      await user.signInWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (e, s) {
      print("Exception: $e");
      print("StackTrace $s");
      return false;
    }
  }

  static Future<bool> signout() async {
    final FirebaseAuth user = FirebaseAuth.instance;
    try {
      await user.signOut();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}

class FirebaseInteraction {
  final CollectionReference worldcupCollectionReference =
      FirebaseFirestore.instance.collection("tournaments");

  Future<bool> registerTournament(
      {required String tname, required String tlocation}) async {
    try {
      await worldcupCollectionReference
          .add({"tournament": tname, "location": tlocation});
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
