import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_app/Provider/loading_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference _firestore = FirebaseFirestore.instance.collection('user');

  Future<void> loginUser(BuildContext context,
     String email,
     String password,
  ) async {
    final loadingProvider = Provider.of<LoadingProvider>(context, listen: false);
    
    try {
      loadingProvider.setLoading(true);
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      loadingProvider.setLoading(false);
    } catch (e) {
      loadingProvider.setLoading(false);
      rethrow; // Important: rethrow the error to handle it in the UI
    }
  }

  Future<void> signUpUsers({
    required BuildContext context,
    required String username,
    required String email,
    required String password,
    required String phoneNumber,
  }) async {
    final loadingProvider = Provider.of<LoadingProvider>(context, listen: false);

    try {
      loadingProvider.setLoading(true);
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email, 
        password: password
      );
      
      // Store user data in Firestore
      final id = userCredential.user!.uid; // Use Firebase UID instead of timestamp
      await _firestore.doc(id).set({
        'username': username,
        'email': email,
        'phone Number':phoneNumber,
        'userId': id,
        'createdAt': FieldValue.serverTimestamp(),
      });
      
      loadingProvider.setLoading(false);
    } catch (e) {
      loadingProvider.setLoading(false);
      rethrow;
    }
  }

  Future<void> signOut(BuildContext context) async {
    final loading_provider = Provider.of<LoadingProvider>(context);
    loading_provider.setLoading(true);
    await _auth.signOut();
    loading_provider.setLoading(false);
  }

  Future<void> forgetPassword({
    required BuildContext context,
    required String email,
  }) async {
    final loadingProvider = Provider.of<LoadingProvider>(context, listen: false);
    
    try {
      loadingProvider.setLoading(true);
      await _auth.sendPasswordResetEmail(email: email);
      loadingProvider.setLoading(false);
      
      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text('Password reset email sent to $email'),
        ),
      );
    } catch (e) {
      loadingProvider.setLoading(false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('Error: ${e.toString()}'),
        ),
      );
    }
  }
}