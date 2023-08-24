import 'package:chatty/chatty.dart';
import 'package:chattyapp/utils/route_configuration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              // Trigger the authentication flow
              final GoogleSignInAccount? googleUser =
                  await GoogleSignIn().signIn();

              // Obtain the auth details from the request
              final GoogleSignInAuthentication? googleAuth =
                  await googleUser?.authentication;

              // Create a new credential
              final credential = GoogleAuthProvider.credential(
                accessToken: googleAuth?.accessToken,
                idToken: googleAuth?.idToken,
              );

              // Once signed in, return the UserCredential
              await FirebaseAuth.instance.signInWithCredential(credential);

              final User user = FirebaseAuth.instance.currentUser!;

              await Chatty.instance.signIn(ChattyUser(
                uid: user.uid,
                displayName: user.displayName!,
                photoUrl: user.photoURL!,
              ));

              if (context.mounted) {
                Navigator.pushNamedAndRemoveUntil(
                    context, ROUTE_MAIN, (route) => false);
              }
            },
            child: const Text('Sign-In with Google')),
      ),
    );
  }
}
