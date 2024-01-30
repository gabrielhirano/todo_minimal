// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: signInWithGoogle,
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Google SignIn",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  signInWithGoogle() async {
    // final GoogleSignIn _googleSignIn = GoogleSignIn();
    // final FirebaseAuth _auth = FirebaseAuth.instance;
    // try {
    //   GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    //   if (googleUser != null) {
    //     GoogleSignInAuthentication? googleAuth =
    //         await googleUser.authentication;
    //     AuthCredential credential = GoogleAuthProvider.credential(
    //       accessToken: googleAuth.accessToken,
    //       idToken: googleAuth.idToken,
    //     );

    //     await _auth.signInWithCredential(credential);
    //   }
    // } catch (e) {
    //   print('Error signin google $e');
    // }

    // GoogleAuthProvider.credential(

    // );
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      print(userCredential.user?.displayName);
    } catch (e) {
      print(e);
    }
  }
}
