import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:suraksha_app/pages/homescreen.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;
  var receivedID = '';

  FirebaseAuthMethods(this._auth);

  void signupWithEmailPassword({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homescreen()),
      );
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == "email-already-in-use") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'You already have an account , try Signin',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
      if (e.code == "weak-password") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'you should enter strong password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    } catch (f) {
      print('Unexpected Error $f');
    }
  }

  void signUpbyPhone(String number) async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: number,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth
              .signInWithCredential(credential)
              .then((value) => print('Logged In Successfully'));
        },

        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: (String verificationId, int? resendToken) {
          receivedID = verificationId;
          // otpFieldVisibility = true;
          // setState(() {});
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          print('TimeOut');
        },
      );
    } catch (e) {
      print('----$e----');
    }
  }
}
