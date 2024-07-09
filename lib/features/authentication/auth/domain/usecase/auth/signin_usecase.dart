import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shoppe/core/enums/login.dart';
import 'package:shoppe/core/interface/login/google_login_impl.dart';
import 'package:shoppe/features/authentication/auth/data/models/user_model.dart';
import 'package:shoppe/features/authentication/auth/domain/responsitory/auth_responsitory.dart';

class SignInUseCase{
  final AuthResponsitory? responsitory;
  SignInUseCase({ this.responsitory});
  Future<dynamic>singIn(Login loginType) async{
   switch(loginType){
     case Login.google:
    var loginCredential = await   GoogleLoginImpl().signIn();
    UserModel userModel = UserModel(
      name: loginCredential?.user?.displayName,
      avatarUrl: loginCredential?.user?.photoURL,
      email: loginCredential?.user?.email,
      token: loginCredential?.credential?.accessToken,
      refreshToken: loginCredential?.user?.refreshToken,
      loginMethod: Login.google,
    );
    return await responsitory?.signIn(userModel);
     case Login.sms:break;
     case Login.shoppe:break;
     case Login.facebook:break;
     case Login.email:break;
   }
  }
  Future<UserCredential> signInWithGoogle() async {
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
  }

}