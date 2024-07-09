import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shoppe/core/interface/login/login.dart';

class GoogleLoginImpl implements Login{
  @override
  Future<dynamic> signIn() async{

    // Future<UserCredential> signIn() async {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      var userCredential =
      await FirebaseAuth.instance.signInWithCredential(credential);
      return userCredential;
    // }
  }

}